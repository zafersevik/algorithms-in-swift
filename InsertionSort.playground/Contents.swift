//: Playground - noun: a place where people can play

func insert<T: Comparable>(_ array: inout [T], _ rightIndex: Int, _ value: T) {
    var i = rightIndex
    
    while i >= 0 && value < array[i] {
        array[i+1] = array[i]
        i -= 1
    }
    array[i+1] = value
}

func insertionSort<T: Comparable>(_ array: inout [T]) {
    if array.isEmpty {
        return
    }
    
    for index in 1..<array.count {
        insert(&array, index-1, array[index])
    }
}

var numbers = [13, 77, 20, 45, 2, 15, 0, 59, 5, 68, 51, 1, -1, 77]
insertionSort(&numbers)

var emptyNumbersArray = [Int]()
insertionSort(&emptyNumbersArray)
