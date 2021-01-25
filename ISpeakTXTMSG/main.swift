//
//  main.swift
//  I Speak TXTMSG
//
//  Puzzle description available at:
//
//  https://www.russellgordon.ca/incomplete-puzzles/i-speak-txtmsg.pdf
//
//  NOTE: Puzzle adapted from material provided by the University of Waterloo.

import Foundation

print("I Speak TXTMSG")
print("==============")

// INPUT

// Ask for a phrase
print("Enter phrase> ", terminator: "")
let phrase = readLine()!

// PROCESS
// Parameters are inputs to the function.
// Parameters are separated by commas.
// A parameter can have an internal and external name.
// In this case, the translate function has one parameter.
// External name of phrase and internal name of shortForm.
func translate(phrase shortForm: String) -> String {

    // NOTE: Instead of an "if statement" consider using a different type of Swift structure to handle all the different possible cases...
    switch shortForm {
    case "TA":
        return "totally awesome"
    case "TTYL":
        return "talk to you later"
    case "CU":
        return "see you"
    case ":-)":
        return "I'm happy"
    case ":-(":
        return "I'm unhappy"
    case ";-)":
        return "wink"
    case ":-P":
        return "stick out my tongue"
    case "(˜.˜)":
        return "sleepy"
    case "CCC":
        return "Canadian Cheese Champion"
    case "CUZ":
        return "because"
    case "TY":
        return "thank-you"
    case "YW":
        return "you're welcome"
    default:
        return shortForm
    }
}

// OUTPUT
// The "Call site"
// Where the function is called or invoked.
// External parameter name shows the call site.
// In this colour scheme, the external name is in white.
// What we pass in for a parameter is referred to as the "argument"
// Parameter = question.  Argument = answer.
let output = translate(phrase: phrase)
print(output)
