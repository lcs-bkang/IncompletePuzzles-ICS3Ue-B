//
//  main.swift
//  Shifty Sums
//
//  Puzzle description available at:
//
//  https://www.russellgordon.ca/incomplete-puzzles/shifty-sums.pdf
//
//  NOTE: Puzzle adapted from material provided by the University of Waterloo.

import Foundation

print("Shifty Sums")
print("===========")

// INPUT

// Get the number to be shifted
print("Number to be shifted?")
let n = Int(readLine()!)!

// How many times should we shift?
print("How many times is it being shifted?")
let k = Int(readLine()!)!

// PROCESS
func shift(n: Int, k: Int) -> Int {
    // Shift the given number "k" number of times
    var output = n
    if k == 0 {
        return(n)
    } else {
        for i in 1...k {
            var toAdd = n
            for _ in 1...i {
                toAdd *= 10
            }
            output += toAdd
        }
        return(output)
    }
}
// OUTPUT
let output = shift(n: n, k: k)
print("The final number is \(output)")
