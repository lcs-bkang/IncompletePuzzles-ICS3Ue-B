//
//  Functions.swift
//  IncompletePuzzles
//
//  Created by Brad Kang on 2021-02-22.
//

import Foundation

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
