class ArrayOperator {
    private var array: [Int]
    public var addition: Int {
                return array.reduce(0, +)
    }
    public var substraction: Int {
                return array.reduce(0, -)
    }

    init(_ arr: [Int]) {
        self.array = arr
    }
}

let arr = ArrayOperator([1,2,3,4,5])
print(arr.addition)
print(arr.substraction)