
class compareStrings {
    var string1: String
    var string2: String

    func compare() -> String {
        return self.string1 == self.string2 ? "Equal" : "Not equal"
    }

    func similarChars() -> String {
        var similarChars = ""
        for char in self.string1 {
            if self.string2.contains(char) && !similarChars.contains(char) {
                similarChars += String(char)
            }
        }
        return "The next characters are similar in both strings: \(similarChars)"
    }

    init(string1: String, string2: String) {
        self.string1 = string1
        self.string2 = string2
    }
}

var myCompareString = compareStrings(string1: "hola", string2: "hola")
print(myCompareString.compare())