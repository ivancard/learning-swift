import UIKit

class DetailMovie: UIViewController {

	@IBOutlet weak var imgMovie: UIImageView!
	@IBOutlet weak var titleMovie: UILabel!
	@IBOutlet weak var descriptionMovie: UILabel!
	@IBOutlet weak var rateLabel: UILabel!
	
	var movie: Movie?
	
	public func config(movie: Movie){
		self.movie = movie
	}
	
	override func viewDidLoad() {
        super.viewDidLoad()
		
		
		imgMovie.layer.cornerRadius = imgMovie.layer.bounds.width / 2
		imgMovie.layer.maskedCorners = [.layerMaxXMaxYCorner, .layerMinXMaxYCorner]
		imgMovie.clipsToBounds = true
		
		guard let selectedMovie = self.movie else {return}
		
		imgMovie.image = UIImage(named: selectedMovie.imgMovie)
		titleMovie.text = selectedMovie.title
		descriptionMovie.text = selectedMovie.description
		rateLabel.text = "\(selectedMovie.rateMovie)/5"
		
    }
}
