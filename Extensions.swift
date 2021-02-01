//
//  Extensions.swift
//  IncompletePuzzles
//
//  Created by Brad Kang on 2021-02-01.
//

import Foundation

// Extensions add new functionality to an existing class, structure, enumeration, or protocol type.
// Static functions are invoked by the class, not the instance.
extension Int {
    // Three parameters -
    // Prompt - The text that will be shown to the user.
    // Minimum - If there is a minimum value, give it here.
    // Maximum - If there is a maximum value, give it here.
    static func collectInput(withPrompt prompt: String, minimum: Int?, maximum: Int?) -> Int {
        
        // Loop until a valid value is provided
        while true {
            
            // Prompt the user
            print(prompt)
            
            // Collect the input
            guard let givenInput = readLine() else {
                continue
            }
            
            // Convert to an integer
            guard let givenInteger = Int(givenInput) else {
                continue
            }
            
            // If a lowest value for the integer was specified...
            if let minimumValue = minimum {
                
                // ... then check that the given integer is greater than or equal to the lowest desired value.
                guard givenInteger >= minimumValue else {
                    continue
                }
                
            }
            
            // If an highest possible value for the integer was specified...
            if let maximumValue = maximum {
                
                // ... then check that the given integer is less than or equal to the highest desired value.
                guard givenInteger <= maximumValue else {
                    continue
                }
                
                
            }
            
            // If we've made it past all the checks, the input is an integer in the desired range of values, so, return it
            return givenInteger
            
        }
        
    }
    
}
