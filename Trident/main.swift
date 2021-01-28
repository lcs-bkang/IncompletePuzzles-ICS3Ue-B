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
    print("Enter tine length:")
// User's input for tine length.
let t = Int(readLine()!)!


// Get tine spacing
    print("Enter tine spacing:")
// The user's input for tine spacing
let s = Int(readLine()!)!


// PROCESS
//func drawTrident(tineLength: Int, tineSpacing: Int, handleLength: Int) {
    
//}
// OUTPUT
// Draw the first line of all three tines with spaces in between.
// Pattern is *, space, space.  *, space, space...
// Draws all tines for the tine length.
for _ in 1...t {
    
    // Draw all three tines with spaces inbetween
    for _ in 1...3 {
        // Print the stars in a horizontal row
        print("*", terminator: "")
    
        // Print the spaces inbetween stars
        for _ in 1...s {
        print("s", terminator: "")
        }
    }
    
    // Row is completed, go to next line.
    print("")
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


