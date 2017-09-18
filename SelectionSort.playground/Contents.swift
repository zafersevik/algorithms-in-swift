//: Playground - noun: a place where people can play

func indexOfMinimumItem<T: Comparable>(array: [T], startIndex: Int) -> Int {
    var minimumItemIndex = startIndex
    for index in startIndex..<array.count {
        if array[minimumItemIndex] > array[index] {
            minimumItemIndex = index
        }
    }
    return minimumItemIndex
}

func selectionSort<T: Comparable>(array: inout [T]) {
    for index in 0..<array.count {
        let minimumItemIndex = indexOfMinimumItem(array: array, startIndex: index)
        if minimumItemIndex != index {
            swap(&array[minimumItemIndex], &array[index])
        }
    }
}

var numbers = [13, 77, 20, 45, 2, 15, 0, 59, 5, 68, 51, 1, -1, 77]
selectionSort(array: &numbers)
