import UIKit

// Q 1.1 Implement an algorithm to determine if a sting has all unique characters.

func isUniqueUTF8Characters(string: String) -> Bool {
    if string.characters.count > 256 {
        return false
    }
    
    var characterSet = [Bool](repeating: false, count: 256)
    
    for s in string.utf8 {
        let intValue: Int = Int(s)
        if characterSet[intValue] {
            return false
        }
        characterSet[intValue] = true
    }
    return true
}

isUniqueUTF8Characters(string: "SWIFT")
isUniqueUTF8Characters(string: "Apple")


// Alternative solution
// For a string consists of lowercase letters a through z
// You can reduce to space usage by using a bit-vector.

func isUniqueLowercaseLetter(string: String) -> Bool {
    var checker: Int32 = 0
    
    for s in string.unicodeScalars {
        let value = Int32(s.value - ("a".unicodeScalars.first?.value)!)
        
        if (checker & (1 << value)) > 0 {
            return false
        }
        checker = checker | (1 << value)
    }
    
    return true
}

isUniqueLowercaseLetter(string: "swift")
isUniqueLowercaseLetter(string: "apple")

