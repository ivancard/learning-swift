import UIKit
import Alamofire
import PopupDialog

class RegisterView: UIViewController {

	@IBOutlet weak var nameField: UITextField?
	@IBOutlet weak var lastNameField: UITextField?
	@IBOutlet weak var emailField: UITextField?
	@IBOutlet weak var passwordField: UITextField?
	@IBOutlet weak var repeatPasswordField: UITextField?
	@IBOutlet weak var btnSignUpUI: UIButton?
	@IBOutlet weak var activityIndicator: UIActivityIndicatorView!
	
	@IBOutlet weak var infoLabel: UILabel!
	override func viewDidLoad() {
        super.viewDidLoad()
		btnSignUpUI?.layer.cornerRadius = 10
		btnSignUpUI?.clipsToBounds = true
		activityIndicator.isHidden = true
    }

	
	
	@IBAction func btnSignUp() {
		
		
		
		// Verifica que halla textfields o los inicializa en vacio
		let name = nameField?.text?.trimmingCharacters(in: .whitespaces) ?? ""
		let lastName = lastNameField?.text?.trimmingCharacters(in: .whitespaces) ?? ""
		let email = emailField?.text?.trimmingCharacters(in: .whitespaces) ?? ""
		let password = passwordField?.text?.trimmingCharacters(in: .whitespaces) ?? ""
		let repeatPassword = repeatPasswordField?.text?.trimmingCharacters(in: .whitespaces) ?? ""
		
		// Verifica que los textfields no esten vacios
		if name != "" && lastName != "" && email != "" && password != "" && repeatPassword != "" {
			if password == repeatPassword {
				
				// Se guarda los parametros ingresados por el usuario en un diccionario
				let parameters: [String : Any] = ["email": email, "password": password, "first_name": name, "last_name": lastName]
				// Se configura la peticion
				let requestData = RequestData(endPoint: "register", method: .post, parameters: parameters)
				
				let networkManager = NetworkManager()
				
				
				activityIndicator.isHidden = false
				activityIndicator.startAnimating()
				// Se realiza la peticion
				networkManager.dispatch(request: requestData, onComplete: { data in
					self.activityIndicator.stopAnimating()
					self.activityIndicator.isHidden = true
					
					guard let user = data as? User else { return }
					
					print(user)
					
					if user.accessToken == nil {
						self.errorRegister(message: "Error al procesar registro")
					}
					
					if let userName = user.firstName {
						self.successRegister(name: userName)
					}
					
					
				}, onError: { (error: String) in
					self.errorRegister(errorDetail: error)
				}, of: User.self)
				
			} else {
				infoLabel.text = "Passwords do not match"
			}
		} else {
			infoLabel.text = "All Fields must be completed"
		}
		
	}
	
	private func successRegister(name: String){
		// Prepare the popup assets
		let title = "Register Success"
		let message = "Welcome \(name), now you can Log In"

		// Create the dialog
		let popup = PopupDialog(title: title, message: message)

		// Create buttons
		let buttonOne = CancelButton(title: "OK") {
			self.navigationController?.pushViewController(loginScreen(), animated: true)
		}

		popup.addButtons([buttonOne])

		// Present dialog
		self.present(popup, animated: true, completion: nil)
	}
	
	private func errorRegister(errorDetail: String ){

				// Prepare the popup assets
		let title = "Error with the register"
		let message = errorDetail
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
	
	private func errorRegister(message: String ){

				// Prepare the popup assets
		let title = "Error with the register"
		let message = "Error: \(message)"
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
