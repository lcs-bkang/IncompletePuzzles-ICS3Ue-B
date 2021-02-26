//
//  ContentView.swift
//  iOS-ShiftySums
//
//  Created by Brad Kang on 2021-02-22.
//

import SwiftUI

struct ContentView: View {
    
    // MARK: Stored Properties
    @State var numberToBeShifted: String = ""
    @State var numberOfShifts: String = ""
    
    // MARK: Computed Properties

    
    private var numberToBeShiftedInt: Int {
        
        guard let numberToBeShiftedInt = Int(numberToBeShifted) else {
            return 0
        }
        
        return numberToBeShiftedInt
    }
    
    private var numberOfShiftsInt: Int {
        
        guard let numberOfShiftsInt = Int(numberOfShifts) else {
            return 0
        }
        
        return numberOfShiftsInt
    }
    
    var shiftedNumber: String {

        return String(shift(n: numberToBeShiftedInt, k: numberOfShiftsInt))
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
        ContentView(numberToBeShifted: "5", numberOfShifts: "3")
    }
}
