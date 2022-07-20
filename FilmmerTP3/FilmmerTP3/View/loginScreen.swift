import UIKit
import Alamofire
import SideMenu

class loginScreen: UIViewController {
	
	let users = [
		User(email: "ivan@mail.com", password: "1234", name: "Ivan", surname: "Cardenas"),
		User(email: "maria@mail.com", password: "1234", name: "Maria", surname: "Lopez"),
		User(email: "pablo@mail.com", password: "1234", name: "Pablo", surname: "Rodriguez"),
	]
	
	@IBOutlet weak var emailTxtField : UITextField?
	@IBOutlet weak var passTxtField : UITextField?
	@IBOutlet weak var infoLabel : UILabel?
	
    override func viewDidLoad() {
        super.viewDidLoad()
    }
	override func viewDidAppear(_ animated: Bool) {
		self.navigationController?.setNavigationBarHidden(true, animated: false)
	}
	
	@IBAction func btnSignUp() {
		self.navigationController?.pushViewController(RegisterView(), animated: true)
		self.navigationController?.setNavigationBarHidden(false, animated: true)
	}
	@IBAction func btnLoginAction() {
		if emailTxtField?.text?.trimmingCharacters(in: .whitespaces) != "" ,
			let userEmail = emailTxtField?.text,
			let userPassword = passTxtField?.text{
			for user in users {
				if user.email == userEmail && user.password == userPassword {
					UserDefaults.standard.set("\(user.name)", forKey: "userName")
					UserDefaults.standard.set("\(user.profileImage)", forKey: "userImage")
					UserDefaults.standard.set("\(user.fullName)", forKey: "userFullName")
					let secondView: HomeScreen = HomeScreen()
					self.navigationController?.pushViewController(secondView, animated: true)
				} else {
					infoLabel?.text = "Incorrect email or password"
				}
			}
		} else {
			infoLabel?.text = "Email and password fields must be completed"
		}
	}
}
