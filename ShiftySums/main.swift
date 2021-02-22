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
let n = Int.collectInputInt(withPrompt: "Number to be shifted? ", minimum: 0, maximum: nil)

// How many times should we shift?
let k = Int.collectInputInt(withPrompt: "How many times is it being shifted? ", minimum: 0, maximum: nil)

// PROCESS

// OUTPUT
let output = shift(n: n, k: k)
print("The final number is \(output)")
