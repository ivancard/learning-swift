class ArrayOperator {
    public var array: [Int]
    public var addition: Int {
                return array.reduce(0, +)
    }
    public var substraction: Int {
        guard let firstArrayElement = array.first else {
            return 0
        }
        return array.reduce(firstArrayElement, { x, y in x - y}) + firstArrayElement
    }

    init(_ arr: [Int]) {
        self.array = arr
    }
}


let arr = ArrayOperator([20,5,5])
print(arr.addition)
print(arr.substraction)