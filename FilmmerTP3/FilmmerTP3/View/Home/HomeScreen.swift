import UIKit
import SideMenu

class HomeScreen: UIViewController {
	
	@IBOutlet weak var tableOfCollectionMovies: UITableView!
	@IBOutlet weak var nameLabelHomeScreen: UILabel!
	@IBOutlet weak var profileImageUI: UIImageView!

	let categoryCellName = "CollectionItem"
	let tableCellName = "moviesHomeTableCell"
	let minimunNumberSpace: CGFloat = 10
	
	let movies = Movie.movieList
	
	let genres: [Genres] = [.action, .horror, .fantasy, .animation]

	override func viewDidLoad() {
        super.viewDidLoad()
		
		self.navigationController?.setNavigationBarHidden(true, animated: true)
		
		tableOfCollectionMovies.delegate = self
		tableOfCollectionMovies.dataSource = self
		tableOfCollectionMovies.register(UINib(nibName: tableCellName, bundle: nil), forCellReuseIdentifier: tableCellName)
		
		let name: String = UserDefaults.standard.string(forKey: "userName") ?? "dude"
		nameLabelHomeScreen.text = "Hi, \(name)"
	
		let profileImageFromUD = UserDefaults.standard.string(forKey: "userImage")!

		profileImageUI.layer.cornerRadius = profileImageUI.bounds.height / 2
		profileImageUI.clipsToBounds = true

		let image = UIImage(named: profileImageFromUD)
		profileImageUI.image = image
    }
	
	override func viewDidAppear(_ animated: Bool) {
		self.navigationController?.setNavigationBarHidden(true, animated: false)
	}
	
	@IBAction func btnOpenSideMenu() {
		let sideMenu: SideMenuOfHome = SideMenuOfHome()
		let sideMenuController = SideMenuNavigationController(rootViewController: sideMenu)
		present(sideMenuController, animated: true, completion: nil)
	}
	
}


extension HomeScreen: UITableViewDelegate, UITableViewDataSource {
	func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		return Genres.allCases.count
	}
	
	func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
		
		guard let tableCell = tableOfCollectionMovies.dequeueReusableCell(withIdentifier: tableCellName, for: indexPath)
				as? moviesHomeTableCell else { return UITableViewCell() }
		
		let selectedMovies = movies.filter { (movie) in
			movie.genre == genres[indexPath.row]
		}
		
		tableCell.config(movies: selectedMovies, genre: genres[indexPath.row].rawValue, navigateClosure: pushNavigation)
		
		return tableCell
	}
	
	func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
		return tableOfCollectionMovies.bounds.height / 2.5
	}
	
	func pushNavigation(selectedMovie: Movie) {
		let detailScreen = DetailMovie()
		detailScreen.config(movie: selectedMovie)
		navigationController?.pushViewController(detailScreen, animated: true)
		self.navigationController?.setNavigationBarHidden(false, animated: true)
		
		self.navigationController?.navigationBar.setBackgroundImage(UIImage(), for: .default)
		self.navigationController?.navigationBar.shadowImage = UIImage()
		self.navigationController?.navigationBar.isTranslucent = true
		self.navigationController?.view.backgroundColor = .clear
		self.navigationController?.navigationBar.tintColor = UIColor.white;
	}
}
