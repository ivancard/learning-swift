import UIKit
import Alamofire
import Kingfisher

class SearchView: UIViewController {

	@IBOutlet weak var searchTextField: UITextField!
	
	@IBOutlet weak var infoStack: UIStackView!
	@IBOutlet weak var labelEmptySearch: UILabel!
	@IBOutlet weak var activityIndicator: UIActivityIndicatorView!
	
	@IBOutlet weak var imageMovie: UIImageView!
	@IBOutlet weak var titleMovie: UILabel!
	@IBOutlet weak var yearMovie: UILabel!
	@IBOutlet weak var rateMovie: UILabel!
	@IBOutlet weak var directorMovie: UILabel!
	@IBOutlet weak var genreMovie: UILabel!
	@IBOutlet weak var actorsMovie: UILabel!
	@IBOutlet weak var plotMovie: UILabel!
	
    override func viewDidLoad() {
        super.viewDidLoad()
		
		self.imageMovie.isHidden = true
		self.infoStack.isHidden = true
		self.labelEmptySearch.isHidden = false
		self.activityIndicator.isHidden = true
    }
	
	@IBAction func btnSearchMovies() {
		
		if searchTextField.text != "" {
			
			let formatedTextSearch = searchTextField.text?.replacingOccurrences(of: " ", with: "+")
			let url = "http://omdbapi.com/?apikey=63464e1f&t=\(formatedTextSearch ?? "")"
			
			self.activityIndicator.isHidden = false
			self.activityIndicator.startAnimating()
			AF.request(url).responseDecodable(of: MovieSearched.self) { response in
				self.activityIndicator.isHidden = true
				self.activityIndicator.stopAnimating()
				self.imageMovie.isHidden = false
				self.infoStack.isHidden = false
				self.labelEmptySearch.isHidden = true
				
				guard let movieData = response.value else { return}
				self.titleMovie.text = response.value?.title
				self.yearMovie.text = "Year: \(movieData.year)"
				self.rateMovie.text = "Rate: \(movieData.imdbRating)"
				self.directorMovie.text = "Director: \(movieData.director)"
				self.genreMovie.text = "Genres: \(movieData.genre)"
				self.actorsMovie.text = "Actors: \(movieData.actors)"
				self.plotMovie.text = "Plot: \(movieData.plot)"
				
				guard let imageUrl = URL(string: movieData.poster ) else {return}
				
				self.imageMovie.kf.setImage(with: imageUrl)
				
				self.searchTextField.text = ""
			}
			
			
		} else {
			print("filed empty")
		}
	}

}
