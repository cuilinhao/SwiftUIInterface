//
//  ProgressTestView.swift
//  SwiftUI_Demo
//
//  Created by 天下林子 on 2020/12/14.
//

import SwiftUI

struct ProgressTestView: View {
    
    @State private var progress = 0.5
    
    var body: some View {
        
        VStack {
            ProgressView(value: 0.25)
            ProgressView(value: 0.75)
        }
        
        //ttt().body
        testSt()
        
        Button("more") {
            progress += 0.05
        }
    }
}


 func ttt() -> some View {
    
    var body: some View{
        Text("qewew")
    }
    
   return Text("were")
}

struct testSt: View {
    
    var body: some View{
        Text("qewew")
    }
}

struct DarkBlueViewStyle: ProgressViewStyle {
    
    func makeBody(configuration: Configuration) -> some View {
        ProgressView(configuration)
            .shadow(color: Color(red: 1.0, green: 0, blue: 0.6), radius: 40.0, x: 1.0, y: 2.0)
    }
    
}



struct ProgressTestView_Previews: PreviewProvider {
    static var previews: some View {
        ProgressTestView()
    }
}
