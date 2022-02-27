//
//  SliderView.swift
//  SwiftUI_Demo
//
//  Created by 天下林子 on 2020/12/14.
//

import SwiftUI

struct SliderView: View {
    
    @State private var speed = 50.0
    @State private var isEditing = false
    
    var body: some View {
        VStack{
            
            Slider(value: $speed, in: 0...100) { editing in
                isEditing = editing
            }
            Text("\(speed)")
                .foregroundColor(isEditing ? .red : .green)
            
            Slider(value: $speed, in: 0...100, onEditingChanged: { editing in
                isEditing = editing
            }, minimumValueLabel: Text("0"), maximumValueLabel: Text("100")) {
                Text("Speed")
            }
            
            Text("\(speed)")
                .foregroundColor(isEditing ? .red : .pink)
            
        }
    }
}

struct SliderView_Previews: PreviewProvider {
    static var previews: some View {
        SliderView()
    }
}
