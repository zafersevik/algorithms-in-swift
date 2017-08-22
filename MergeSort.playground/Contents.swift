import Foundation

func merge<T: Comparable>(_ array: inout [T], _ left: Int, _ middle: Int, _ right: Int) {
    
    let leftSide = Array(array[left...middle])
    let rightSide = Array(array[(middle+1)...right])
    
    var k = left
    var leftIndex = 0
    var rightIndex = 0
    
    while (leftIndex < leftSide.count) && (rightIndex < rightSide.count) {
        if leftSide[leftIndex] < rightSide[rightIndex] {
            array[k] = leftSide[leftIndex]
            leftIndex += 1
        }
        else {
            array[k] = rightSide[rightIndex]
            rightIndex += 1
        }
        k += 1
    }
    
    while leftIndex < leftSide.count {
        array[k] = leftSide[leftIndex]
        k += 1
        leftIndex += 1
    }
    
    while rightIndex < rightSide.count {
        array[k] = rightSide[rightIndex]
        k += 1
        rightIndex += 1
    }
}

func mergeSort<T: Comparable>(_ array: inout [T], _ left: Int, _ right: Int) {
    let q = (left + right) / 2 // midway between left and right
    
    if left < right {
        mergeSort(&array, left, q)
        mergeSort(&array, q+1, right)
        merge(&array, left, q, right)
    }
}

var numbers = [13, 77, 20, 45, 2, 15, 0, 59, 5, 68, 51, 1, -1, 77]
mergeSort(&numbers, 0, numbers.count - 1)
