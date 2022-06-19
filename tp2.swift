class ArrayOperator {
    private var array: [Int]
    public var add: Int {
        get {
            return array.reduce(0, +)
        }
    }

    init(_ arr: [Int]) {
        self.array = arr
    }
}

let arr = ArrayOperator([1,2,3,4,5])
print(arr.add)