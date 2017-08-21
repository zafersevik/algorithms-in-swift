// Q 1.8 
// Zero Matrix: Write an algorithm such that if an element in an MxN matrix is 0, its entire row and column are set to 0.

var matrix = [
    [1,2,0,4,5],
    [6,7,8,9,3],
    [1,2,0,4,5],
    [0,7,8,9,3]
]

// Expected matrix after conversion
// let zeroMatrix = [
//     [0,0,0,0,0],
//     [0,7,0,9,3],
//     [0,0,0,0,0],
//     [0,0,0,0,0]
// ]

func convertToZeroMatrix(matrix: inout [[Int]]) {
    var zeroRows = [Bool](repeating: false, count: matrix.count)
    var zeroColumns = [Bool](repeating: false, count: matrix[0].count)
    
    // detect zero rows and columns
    for rowIndex in 0..<matrix.count {
        for columnIndex in 0..<matrix[rowIndex].count {
            if matrix[rowIndex][columnIndex] == 0 {
                zeroRows[rowIndex] = true
                zeroColumns[columnIndex] = true
            }
        }
    }
    
    // set zeroRows' items to zero
    for rowIndex in 0..<zeroRows.count {
        if zeroRows[rowIndex] {
            makeRowZero(matrix: &matrix, rowIndex: rowIndex)
        }
    }

    // set zeroColumns' items to zero
    for columnIndex in 0..<zeroColumns.count {
        if zeroColumns[columnIndex] {
            makeColumnZero(matrix: &matrix, columnIndex: columnIndex)
        }
    }
}

func makeRowZero(matrix: inout [[Int]], rowIndex: Int) {
    for columnIndex in 0..<matrix[0].count {
        matrix[rowIndex][columnIndex] = 0
    }
}

func makeColumnZero(matrix: inout [[Int]], columnIndex: Int) {
    for rowIndex in 0..<matrix.count {
        matrix[rowIndex][columnIndex] = 0
    }
}

convertToZeroMatrix(matrix: &matrix)
// This algorithm uses O(N) space and operates in O(NM) time





