import UIKit
import Alamofire
import SideMenu
import PopupDialog

class loginScreen: UIViewController {
	
	@IBOutlet weak var emailTxtField : UITextField?
	@IBOutlet weak var passTxtField : UITextField?
	@IBOutlet weak var infoLabel : UILabel?
	@IBOutlet weak var activityIndicator: UIActivityIndicatorView!
	
    override func viewDidLoad() {
        super.viewDidLoad()
		activityIndicator.isHidden = true
    }
	override func viewDidAppear(_ animated: Bool) {
		self.navigationController?.setNavigationBarHidden(true, animated: false)
	}
	
	@IBAction func btnSignUp() {
		self.navigationController?.pushViewController(RegisterView(), animated: true)
		self.navigationController?.setNavigationBarHidden(false, animated: true)
	}
	@IBAction func btnLoginAction() {
		let email = emailTxtField?.text?.trimmingCharacters(in: .whitespaces) ?? ""
		let password = passTxtField?.text?.trimmingCharacters(in: .whitespaces) ?? ""
		
		if email != "" && password != "" {
			let parameters: [String : Any] = ["email": email, "password": password]
			
			let requestData = RequestData(endPoint: "login", method: .post, parameters: parameters)
			
			let networkManager = NetworkManager()
			activityIndicator.isHidden = false
			activityIndicator.startAnimating()
			networkManager.dispatch(request: requestData, onComplete: { data in
				self.activityIndicator.stopAnimating()
				self.activityIndicator.isHidden = true
				guard let user = data as? User else { return }
				
				let homeScreen = HomeScreen()
				homeScreen.activeUser = user
				if user.accessToken != nil{
					self.navigationController?.pushViewController(homeScreen, animated: true)
				} else {
					self.errorLogin()
				}
				
			}, onError: { (error) in
				self.activityIndicator.stopAnimating()
				self.activityIndicator.isHidden = true
				
				self.infoLabel?.text = "User do not found"
			}, of: User.self)
		} else {
			infoLabel?.text = "Email and password fields must be completed"
		}
	}
	
	private func errorLogin(){
		// Prepare the popup assets
		let title = "Login error"
		let message = "Incorrect user or password"
		let image = UIImage(systemName: "exclamationmark.triangle.fill")

		// Create the dialog
		let popup = PopupDialog(title: title, message: message, image: image)

		// Create buttons
		let buttonOne = CancelButton(title: "OK") {
			
		}

		popup.addButtons([buttonOne])

		// Present dialog
		self.present(popup, animated: true, completion: nil)
	}
}
