class regexPasswordValidation {

    let password: String

    init(password: String) {
        self.password = password
    }

    func validate () -> String {
        let regex = ^(?=.*[A-Z])(?=.*[!@#$&*])(?=.*[0-9])(?=.*[a-z]).{6}$
        let passwordTest = NSPredicate(format: "SELF MATCHES %@", regex)
        if passwordTest.evaluate(with: password) {
            return "The password is strong"
        }else{
            return "The password is not strong"
        }
    }

}

var password = passwordValidator(password: "123456")
print(password.validate())