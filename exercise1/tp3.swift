struct Person {
    private var name: String
    private var country: String
    private var telephone: String
    private var age: Int
}

class Diary {
    private var people: [Person]

    init(peopleData: [Int]) {
        self.people = peopleData
    }
}