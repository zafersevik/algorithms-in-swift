//: Playground - noun: a place where people can play

import UIKit

// Q 1.9
// Assume you have a method isSubstring which checks if one word is a substring of another.
// Given two strings, s1 and s2, write code to check if s2 is a rotation of s1 using only one 
// call to isSubstring (e.g. "waterbottle" is a rotation of "erbottlewat").


// All rotations could be found in waterbottlewaterbottle -> ...erbottlewat........
// Instead of isSubstring we could use String.contains in Swift
func isRotation(s1: String, s2: String) -> Bool {
    
    if s1.characters.count != s2.characters.count {
        return false
    }
    
    let s3 = s1 + s1
    return s3.contains(s2)
}

isRotation(s1: "erbottlewat", s2: "waterbottle")
isRotation(s1: "water", s2: "waterbottle")
isRotation(s1: "erbottleaaa", s2: "waterbottle")
isRotation(s1: "ewaterbottl", s2: "waterbottle")
