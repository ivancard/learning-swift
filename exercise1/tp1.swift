class Calculator {
    private var num1: Int
    private var num2: Int

    init(_ num1: Int, _ num2: Int) {
        self.num1 = num1
        self.num2 = num2
    }

    func operate() -> (add: Int, sub: Int, mul: Int, div: Double) {
        return (
            num1 + num2,
            num1 - num2,
            num1 * num2,
            Double(num1) / Double(num2)
        )
    }
}

let results = Calculator(1,2).operate()
(add, sub, mul, div) = results
print("add: \(add), sub: \(sub), mul: \(mul), div: \(div)")