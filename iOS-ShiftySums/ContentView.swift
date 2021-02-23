//
//  ContentView.swift
//  iOS-ShiftySums
//
//  Created by Brad Kang on 2021-02-22.
//

import SwiftUI

struct ContentView: View {
    
    // MARK: Stored Properties
    @State var numberToBeShifted: String = "0"
    @State var numberOfShifts: String = "0"
    
    // MARK: Computed Properties
    
    var numberToBeShiftedText: Int {
       return Int(numberToBeShifted)!
    }
    private var shiftedNumber: String {
        return shift(n: numberToBeShifted, k: numberOfShifts)
    }
    
    var body: some View {
        
        NavigationView {
            
            Form {
                Section(header: Text("What number is being shifted:")) {
                    TextField("I.e. 6", text: $numberToBeShifted)
                        .keyboardType(.numberPad)
                }
                Section(header: Text("How many times do you want to shift:")) {
                    TextField("I.e. 3", text: $numberOfShifts)
                        .keyboardType(.numberPad)
                }
                Section(header: Text("Result")) {
                    Text(shiftedNumber)
                }
                
            }
        }
    }

}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(numberToBeShifted: 5, numberOfShifts: 3)
    }
}