import UIKit

class moviesHomeTableCell: UITableViewCell {
	
	@IBOutlet var collectionView: UICollectionView!
	@IBOutlet weak var cellTitle: UILabel!
	
	let categoryCellName = "CollectionItem"
	var movies = [Movie]()
	var genre: String?
	
	var navigateClosure: ((_ movie: Movie) -> Void)?
	
    override func awakeFromNib() {
        super.awakeFromNib()
		
		collectionView?.dataSource = self
		collectionView?.delegate = self
		collectionView?.register(UINib(nibName: categoryCellName, bundle: nil), forCellWithReuseIdentifier: categoryCellName)
		
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
	
	public func config(movies: [Movie], genre: String, navigateClosure: @escaping (_ movie: Movie) -> Void) {
		self.movies = movies
		self.genre = genre
		self.cellTitle.text = genre
		self.navigateClosure = navigateClosure
	}
}

extension moviesHomeTableCell: UICollectionViewDelegateFlowLayout {
	
	func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
		let sizeNumber = (self.bounds.width / 3)
		return CGSize(width: sizeNumber, height: sizeNumber * 1.5)
	}
	
	func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
		return 16
	}
	
	func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
		return 16
	}
	
	func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
		navigateClosure?(movies[indexPath.row])
	}
}

extension moviesHomeTableCell: UICollectionViewDataSource {

	func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
		return movies.count
	}

	func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
		guard let movieItem = collectionView.dequeueReusableCell(withReuseIdentifier: categoryCellName, for: indexPath) as? CollectionItem else { return UICollectionViewCell()}

		let currentMovieItem = movies[indexPath.row]
		movieItem.config(URLImage: currentMovieItem.imgMovie)
		
		return movieItem
	}
}
