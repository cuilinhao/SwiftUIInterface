//
//  CountView.swift
//  SwiftUI_Demo
//
//  Created by 天下林子 on 2020/11/26.
//

import SwiftUI

struct CountView: View {
    
    @State var counter = 0
    var body: some View {
        VStack{
            //Text("Hello, World!")
            //Color.green
                //.ignoresSafeArea(edges: .all)
            
            Button("Tap me") {
                self.counter += 1
            }
            
            .padding()
            .background(Color(.tertiarySystemFill))
            .frame(width: 200, height: 200 )
            .border(Color.black)
            
            if counter > 0 {
                Text("You ve tapped\(counter) time")
            }else {
                Text("You ve not yet Tapped")
            }
            
        }
        
    }
}


extension VStack {
    func debug() {
        print("++++++++++")
    }
}

struct CountView_Previews: PreviewProvider {
    static var previews: some View {
        CountView()
    }
}
