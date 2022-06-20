class passwordValidator {

    let password: String

    init(password: String) {
        self.password = password
    }

    func validate(password: String) -> String {
        let numbers = "0123456789"
        let lower_case = "abcdefghijklmnopqrstuvwxyz"
        let upper_case = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
        let special_characters = "!@#$%^&*()-+"

        if  password.count >= 6 &&
            password.contains(lower_case) &&
            password.contains(upper_case) &&
            password.contains(numbers) &&
            password.contains(special_characters) {
            return "The password is strong"
        }else{
            return "The password is not strong"
        }
    }

}

var password = passwordValidator(password: "123456")
print(password.validate())