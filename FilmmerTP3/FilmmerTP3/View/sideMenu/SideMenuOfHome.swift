import UIKit

class SideMenuOfHome: UIViewController {

	@IBOutlet weak var imgProfile: UIImageView!
	@IBOutlet weak var labelUser: UILabel!
	@IBOutlet weak var btnLogOutUI: UIButton!
	
	
	@IBAction func btnLogOut() {
		self.navigationController?.pushViewController(loginScreen(), animated: true)
	}
	override func viewDidLoad() {
        super.viewDidLoad()
		self.navigationController?.setNavigationBarHidden(true, animated: false)
		
		let profileImageFromUD = UserDefaults.standard.string(forKey: "userImage") ?? "imgNotFound"
		let fullNameFromUD = UserDefaults.standard.string(forKey: "userFullName") ?? "user"
		
		imgProfile.layer.cornerRadius = imgProfile.bounds.width / 2
		imgProfile.clipsToBounds = true
		imgProfile.image = UIImage(named: profileImageFromUD)
		
		labelUser.text = fullNameFromUD
		
		btnLogOutUI.layer.cornerRadius = 10
		btnLogOutUI.clipsToBounds = true
    }
}
