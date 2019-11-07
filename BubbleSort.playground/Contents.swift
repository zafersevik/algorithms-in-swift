import Foundation

func bubbleSort<T: Comparable>(_ array: inout [T]) {
	var swaps = Int.min

	while swaps != 0 {
		swaps = 0
		for (index, _) in array.enumerated() {
			if index + 1 < array.count {
				if array[index] > array[index + 1] {
					array.swapAt(index, index + 1)
					swaps += 1
				}
			}
		}
	}
}

var arr = [21,5,6,15,10,5,25,-1,0,3]
bubbleSort(&arr)
