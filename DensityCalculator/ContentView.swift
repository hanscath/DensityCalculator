//
//  ContentView.swift
//  DensityCalculator
//
//  Created by Hans Cathcart on 6/3/23.
//

import SwiftUI

struct ContentView: View {
    
    @State private var altitude: Int = 0
    @State private var temperature: Int = 0
    
    private var result: Int {
        return altitude + temperature
    }
    
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
        }
    }
    
    func densityAltitude() -> Int {
        return altitude * temperature
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
