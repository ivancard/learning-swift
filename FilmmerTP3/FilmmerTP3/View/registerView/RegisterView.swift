import UIKit

class RegisterView: UIViewController {

	@IBOutlet weak var nameField: UITextField!
	@IBOutlet weak var lastNameField: UITextField!
	@IBOutlet weak var emailField: UITextField!
	@IBOutlet weak var passwordField: UITextField!
	@IBOutlet weak var repeatPasswordField: UITextField!
	@IBOutlet weak var btnSignUpUI: UIButton!
	
	override func viewDidLoad() {
        super.viewDidLoad()
    }
	
	// TODO:  Implement this on SING UP
	
	// --- START call to the api
	
	
//			func onComplete(){
//				print("complete")
//			}
//			func onError(){
//				print("error")
//			}
//
//			let parameters: [String : Any] = ["email": userEmail, "password": userPassword]
//			let requestData = RequestData(endPoint: "/login", method: .post, parameters: parameters)
//			let networkManager = NetworkManager()
//
//			networkManager.dispatch(request: requestData, onComplete: onComplete, onError: onError(), of: User.self)
	
	
	// --- END call to the api
	
	
	
	
	@IBAction func btnSignUp() {
	}
}
