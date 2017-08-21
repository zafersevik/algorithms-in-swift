import UIKit

// Q 1.1 Implement an algorithm to determine if a sting has all unique characters.

func isUniqueCharacters(string: String) -> Bool {
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

isUniqueCharacters(string: "Zafer")
isUniqueCharacters(string: "araba")

"a".utf8.first
"b".utf8.first
