import UIKit

class regexPasswordValidation {

    let password: String

    init(password: String) {
        self.password = password
    }

    func validate () -> String {
        let regex = "^(?=.*[a-z])(?=.*[A-Z])(?=.*\\d)(?=.*[d$@$!%*?&#])[A-Za-z\\dd$@$!%*?&#]{6,}"
        let passwordTest = NSPredicate(format: "SELF MATCHES %@", regex)
        if passwordTest.evaluate(with: password) {
            return "The password is strong"
        }else{
            return "The password is not strong"
        }
    }
}

var password = regexPasswordValidation(password: "Laa21!")
print(password.validate())
