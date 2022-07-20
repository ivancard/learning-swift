import UIKit

class CollectionItem: UICollectionViewCell {

	
	@IBOutlet weak var collectionMovieImg: UIImageView!
	
    override func awakeFromNib() {
        super.awakeFromNib()
    }

	public func config(URLImage: String){		
		collectionMovieImg.image = UIImage(named: URLImage)
//		collectionMovieImg.layer.cornerRadius = 10
//		collectionMovieImg.clipsToBounds = true
//		
//		collectionMovieImg.layer.masksToBounds = false
//		collectionMovieImg.layer.shadowRadius = 10
//		collectionMovieImg.layer.shadowOpacity = 1.0
//		collectionMovieImg.layer.shadowOffset = CGSize(width: 3, height: 3)
//		collectionMovieImg.layer.shadowColor = UIColor.black.cgColor
	}
}
