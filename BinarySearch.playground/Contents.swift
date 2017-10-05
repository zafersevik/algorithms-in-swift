//: Playground - noun: a place where people can play

func findMinimumIndexFor<T: Comparable>(_ array: [T], _ targetValue: T, _ guessedIndex: Int, _ minimumIndex: Int) -> Int {
    return (array[guessedIndex] < targetValue) ? guessedIndex + 1 : minimumIndex
}

func findMaximumIndexFor<T: Comparable>(_ array: [T], _ targetValue: T, _ guessedIndex: Int, _ maximumIndex: Int) -> Int {
    return (array[guessedIndex] > targetValue) ? guessedIndex - 1 : maximumIndex
}

func binarySearchInRange<T: Comparable>(array: [T], targetValue: T, minimumIndex: Int, maximumIndex: Int) -> Int {
    if minimumIndex > maximumIndex {
        return -1
    }
    let guessedIndex = (minimumIndex + maximumIndex) / 2
    // base case
    if array[guessedIndex] == targetValue {
        return guessedIndex
    }
    let newMinimumIndex = findMinimumIndexFor(array, targetValue, guessedIndex, minimumIndex)
    let newMaximumIndex = findMaximumIndexFor(array, targetValue, guessedIndex, maximumIndex)
    return binarySearchInRange(array: array, targetValue: targetValue, minimumIndex: newMinimumIndex, maximumIndex: newMaximumIndex)
}

func binarySearch<T: Comparable>(array: [T], targetValue: T) -> Int {
    return binarySearchInRange(array: array, targetValue: targetValue, minimumIndex: 0, maximumIndex: array.count - 1)
}

let numbers = [-1, 0, 1, 2, 5, 13, 15, 20, 45, 51, 59, 68, 77]
let indexOfTargetValue = binarySearch(array: numbers, targetValue: 59)
let indexOfTargetValueNotInNumbers = binarySearch(array: numbers, targetValue: 888)
