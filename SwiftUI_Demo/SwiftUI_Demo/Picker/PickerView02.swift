//
//  PickerView02.swift
//  SwiftUI_Demo
//
//  Created by 天下林子 on 2020/12/11.
//

import SwiftUI


enum Flavor: String, CaseIterable, Identifiable {
    case chocolate
    case vanilla
    case strawberry

    var id: String { self.rawValue }
}

enum Topping: String, CaseIterable, Identifiable {
    case nuts
    case cookies
    case blueberries

    var id: String
    {
        self.rawValue
    }
}


struct PickerView02: View {
    
    @State private var selectedFlavor = Flavor.chocolate
    
    var body: some View {
        
        Picker("Flavor", selection: $selectedFlavor) {
            Text("Chocolate").tag(Flavor.chocolate)
            Text("Vanilla").tag(Flavor.chocolate)
            Text("Strawberry").tag(Flavor.strawberry)
        }
        Text("Selected flavor: \(selectedFlavor.rawValue)")

    }
}

struct PickerView02_Previews: PreviewProvider {
    static var previews: some View {
        PickerView02()
    }
}
