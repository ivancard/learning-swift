import UIKit

enum requiredSpecifications: String  {
    case numbers = "0123456789"
    case lowerCase = "abcdefghijklmnopqrstuvwxyz"
    case upperCase = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
    case specialCharacters = "!@#$%^&*()-+."
}

func hasARequiredSpecification(type specificated: requiredSpecifications, evaluate chain: String) -> Bool {
    let arrOfSpectificated = Array(specificated.rawValue)
    for char in chain {
        if arrOfSpectificated.contains(char){
            return true
        }
    }
    return false
}

class passwordValidator {

    let password: String

    init(password: String) {
        self.password = password
    }

    func validate() -> String {
        
        if self.password.count >= 6 {
            var errorMesagge = "Your password must contains: almost "
            
            let hasANumber = hasARequiredSpecification(type: .numbers, evaluate: self.password)
           
            let hasALowerCase = hasARequiredSpecification(type: .lowerCase, evaluate: self.password)
            
            let hasAUpperCase = hasARequiredSpecification(type: .upperCase, evaluate: self.password)
            
            let hasASpecialCharacter = hasARequiredSpecification(type: .specialCharacters, evaluate: self.password)
            
            
            errorMesagge += hasANumber == false ? "1 number " : ""
            errorMesagge += hasALowerCase == false ? "1 lower case " : ""
            errorMesagge += hasAUpperCase == false ? "1 upper case " : ""
            errorMesagge += hasASpecialCharacter == false ? "1 special character " : ""
            
            return hasANumber && hasALowerCase && hasAUpperCase && hasASpecialCharacter ? "is strong" : errorMesagge
        }
        
        return "The password must be longer than 6 characters"
    }
}

var pass = passwordValidator(password: "aAaaaa2!")
print(pass.validate())
