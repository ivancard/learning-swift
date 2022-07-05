//
//  LoginViewController.swift
//  trabajoPractico2
//
//  Created by InfinixSoft Digital Solutions on 04/07/2022.
//

import UIKit

class LoginViewController: ViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
	
	let users: [String: String] = ["ivan@mail.com": "1234",
									   "infinix@mail.com": "soft",
									   "iosdev@mail.com":"swift"]
	
	@IBOutlet weak var emailTxtField : UITextField?
	@IBOutlet weak var passTxtField : UITextField?
	@IBOutlet weak var label : UILabel?
	
	@IBAction func submitButton() {
		if emailTxtField?.text != "" && passTxtField?.text != "" {
			
			guard let userMail = emailTxtField?.text else { return  }
			guard let userPass = passTxtField?.text else { return  }
			
			if userPass == users[userMail] {
				let homeView: HomeViewController = HomeViewController()
				self.navigationController?.pushViewController(homeView, animated: true)
			} else {
				label?.text = "Email or password invalid"
			}
			
			
		} else {
			label?.text = "Email and password fields must be completed"
		}
		
		
		
	}

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
