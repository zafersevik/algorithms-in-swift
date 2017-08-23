import Foundation

func merge<T: Comparable>(_ array: inout [T], _ left: Int, _ middle: Int, _ right: Int) {
    let leftSubarray = Array(array[left...middle])
    let rightSubarray = Array(array[(middle+1)...right])
    
    var index = left
    var leftIndex = 0
    var rightIndex = 0
    
    while (leftIndex < leftSubarray.count) && (rightIndex < rightSubarray.count) {
        if leftSubarray[leftIndex] < rightSubarray[rightIndex] {
            array[index] = leftSubarray[leftIndex]
            leftIndex += 1
        }
        else {
            array[index] = rightSubarray[rightIndex]
            rightIndex += 1
        }
        index += 1
    }
    
    while leftIndex < leftSubarray.count {
        array[index] = leftSubarray[leftIndex]
        leftIndex += 1
        index += 1
    }
    
    while rightIndex < rightSubarray.count {
        array[index] = rightSubarray[rightIndex]
        rightIndex += 1
        index += 1
    }
}

func mergeSort<T: Comparable>(_ array: inout [T], _ left: Int, _ right: Int) {
    if left >= right {
        return
    }
    
    let middle = (left + right) / 2
    
    mergeSort(&array, left, middle)
    mergeSort(&array, middle+1, right)
    merge(&array, left, middle, right)
}

var numbers = [13, 77, 20, 45, 2, 15, 0, 59, 5, 68, 51, 1, -1, 77]
mergeSort(&numbers, 0, numbers.count - 1)



