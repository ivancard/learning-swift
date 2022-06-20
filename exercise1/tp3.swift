import Foundation

struct Person {
    public var name: String
    public var country: String
    public var telephone: String
    public var age: Int
}

class Diary {
    private var people: [Person]

    init(peopleData: [Person]) {
        self.people = peopleData
    }

    func getContact(name: String) -> String {
        let nameToSearch = name.lowercased().trimmingCharacters(in: .whitespaces)
        guard let contact = self.people.first(where: { $0.name == nameToSearch }) else{
            return "The contact does not exist"
        }
        return "Name: \(contact.name.capitalized), Country: \(contact.country), Telephone: \(contact.telephone), Age: \(contact.age)"
    }
}


let peopleData = [
    Person(name: "john", country: "USA", telephone: "123456789", age: 20),
    Person(name: "maria", country: "Mexico", telephone: "123456789", age: 25),
    Person(name: "robert", country: "Colombia", telephone: "123456789", age: 26),
    Person(name: "julia", country: "Argentina", telephone: "123456789", age: 28),
    Person(name: "daniel", country: "Canada", telephone: "123456789", age: 15)
]
let myDiary = Diary(peopleData: peopleData)
print(myDiary.getContact(name: "julia"))
