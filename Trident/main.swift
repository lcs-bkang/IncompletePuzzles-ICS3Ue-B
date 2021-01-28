//
//  main.swift
//  Trident
//
//  Puzzle description available at:
//
//  https://www.russellgordon.ca/incomplete-puzzles/trident.pdf
//
//  NOTE: Puzzle adapted from material provided by the University of Waterloo.

import Foundation

print("Trident")
print("=======")

// INPUT
    
// Get tine length
    print("Enter tine length:", terminator: "")
// User's input for tine length.
let t = Int(readLine()!)!


// Get tine spacing
    print("Enter tine spacing:", terminator: "")
// The user's input for tine spacing
let s = Int(readLine()!)!


// PROCESS
//func drawTrident(tineLength: Int, tineSpacing: Int, handleLength: Int) {
    
//}
// OUTPUT
for _ in 1...t {
    print("*")
}
//// Produce top of trident according to length given
//for _ in 1...tineLength {
//    // Print the tines
//    for _ in 1...3 {
//
//        // Print part of a tine
//        print("*", terminator: "")
//
//        // Print space between tines
//        for _ in 1...spacing {
//            print(" ", terminator: "")
//        }
//
//    }
//    // Go to next line of output
//    print("")
//}


