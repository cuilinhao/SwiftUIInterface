//
//  StepperView.swift
//  SwiftUI_Demo
//
//  Created by 天下林子 on 2020/12/14.
//

import SwiftUI

struct StepperView: View {

    /** ************ */
    @State private var bgColor = Color(.sRGB, red: 0.98, green: 0.9, blue: 0.2)
    
    /** ****************** */

    @State private var value = 0
    @State private var value2 = 0
    
    let step = 5
    let range = 1...50
    
    
    let colors: [Color] = [.orange, .red, .gray, .blue, .green, .pink, .purple]
    
    func incrementStep() {
        value += 1
        if value >= colors.count {
            value = 0
        }
    }
    
    func decrementStep() {
        value -= 1
        if value < 0 {
            value = colors.count - 1
        }
    }
    
    
    var body: some View {
        
        
        /** ************************* */
        Stepper(onIncrement: incrementStep, onDecrement: decrementStep) {
            Text("Value: \(value) Color: \(colors[value].description)")
        }
        .padding(5)
        .background(colors[value])
        
       
        /** ************************* */
        Stepper(value: $value2,  in: range, step: step) {
            Text("Current: \(value2) in \(range.description)" + "stepping by \(step)")
        }
        .padding(10)
        
        /** ******Color******************* */
        ColorPicker("Alignment Guids", selection: $bgColor)
        
        VStack {
            Label("Rain", systemImage: "cloud.rain")
            Label("Snow", systemImage: "snow")
            Label("Sun", systemImage: "sun.max")
        }
        .labelStyle(IconOnlyLabelStyle())
        
        Label {
            Text("person.fullName")
                .font(.body)
                .foregroundColor(.primary)
            Text("person.title")
                .font(.subheadline)
                .foregroundColor(.secondary)
        } icon: {
            Circle()
                .fill(Color.green)
                .frame(width: 44, height: 44, alignment: .center)
                .overlay(Text("person.initials"))
        }
        
    }
}

struct StepperView_Previews: PreviewProvider {
    static var previews: some View {
        StepperView()
    }
}
