//
//  ContentView.swift
//  DensityCalculator
//
//  Created by Hans Cathcart on 6/3/23.
//

import SwiftUI

struct ContentView: View {
    
//    Two binding "State" variables that can be privately used in this struct.
//    As they change the View is updated.
    @State private var altitude: Int = 0
    @State private var temperature: Int = 0
    
//    A computed property called result that simply adds the altitude and temperature
//    and returns an Int.  It is computed every time the View is reloaded, and can be
//    used inside this struct.
    private var result: Int {
        return altitude + temperature
    }
    
//    The main body of the View
    var body: some View {
        Form {
            Section {
                TextField("Altitude", value: $altitude, format: .number)
                TextField("Temperature", value: $temperature, format: .number)
            } header: {
                Text("Input")
            }
            
            Section {
                Text(result, format: .number)
            } header: {
                Text("Output")
            }
            
            Section {
                Text(densityAltitude(), format: .number)
            } header: {
                Text("Output")
            }
            
            Section {
//                Pressing this button calls the densityAltitude function and prints
//                that output to the console.
                Button("Calculate Density Altitude") {
                    print(densityAltitude())
                }
            }
        }
    }
    
//    A function that when called will multiply the altitude and temperature and
//    returns an Int.  In this case it's called when the View is loaded, but it
//    could just as well be called by an action such as a Button.
    func densityAltitude() -> Int {
        return altitude * temperature
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
