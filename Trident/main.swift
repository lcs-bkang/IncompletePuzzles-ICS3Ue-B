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

// Get handle length.
print("Enter handle length:")
// User's input for handle length
let h = Int(readLine()!)!

// Making lines separate the input lines and the trident.
for _ in 1...2 {
    print("")
}

// PROCESS
func drawTrident(tineLength: Int, tineSpacing: Int, handleLength: Int) {
    
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
                print(" ", terminator: "")
            }
        }
        
        // Row is completed, go to next line.
        // The \n character sequece pushes content down to the next line
        // You can use print("") to push to the next line, using the built in terminator.
        // Or you can change it to be written as this
        print("\n", terminator: "")
    }
    // Draw the line connecting the tines.
    for _ in 1...2 {
        print("*", terminator: "")
        
        for _ in 1...s {
            print("*", terminator: "")
        }
    }
    // Printing the last star in the connector line and go down to the next line.
    print("*")
    
    // Create a variable that holds the value of the spaces before the handle.
    let handleSpace = s + 1
    // Print the trident handle
    for _ in 1...h {
        for _ in 1...handleSpace {
            print(" ", terminator: "")
        }
        print("*")
    }
}

// OUTPUT
// Creating the value that runs the function.  Call site.
let output: () = drawTrident(tineLength: t, tineSpacing: s, handleLength: h)
print(output)
