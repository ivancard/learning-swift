import UIKit

class SideMenuOfHome: UIViewController {

	var activeUser: User?
	
	@IBOutlet weak var imgProfile: UIImageView!
	@IBOutlet weak var labelUser: UILabel!
	@IBOutlet weak var btnLogOutUI: UIButton!
	
	
	@IBAction func btnLogOut() {
		self.navigationController?.pushViewController(loginScreen(), animated: true)
	}
	override func viewDidLoad() {
        super.viewDidLoad()
		self.navigationController?.setNavigationBarHidden(true, animated: false)
		
		let profileImage = "img\(activeUser?.firstName ?? "imgNoFound")"
		let fullName = activeUser?.fullName
		
		imgProfile.layer.cornerRadius = imgProfile.bounds.width / 2
		imgProfile.clipsToBounds = true
		imgProfile.image = UIImage(named: profileImage)
		
		labelUser.text = fullName
		
		btnLogOutUI.layer.cornerRadius = 10
		btnLogOutUI.clipsToBounds = true
    }
}
