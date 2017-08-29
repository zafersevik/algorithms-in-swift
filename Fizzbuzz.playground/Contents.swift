//: Playground - noun: a place where people can play

let thousandNumbers = [Int](1...1000)

func printFizzBuzz(numbers: [Int]) {
    for i in numbers {
        if i % 15 == 0 {
            print("\(i) fizzbuzz")
        }
        else if i % 3 == 0 {
            print("\(i) fizz")
        }
        else if i % 5 == 0 {
            print("\(i) buzz")
        }
        else {
            print("\(i)")
        }
    }
}

printFizzBuzz(numbers: thousandNumbers)