import UIKit

class CustomCard: UIImageView {
	override init(frame: CGRect) {
		super.init(frame: frame)
		setRadiusAndShadow()
	}
	
	required init?(coder aDecoder: NSCoder) {
		super.init(coder: aDecoder)
		setRadiusAndShadow()
	}
	
	func setRadiusAndShadow() {
		layer.cornerRadius = 10
		clipsToBounds = true
	}
}
