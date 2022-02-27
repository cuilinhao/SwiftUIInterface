//
//  TabBar1.swift
//  SwiftUI_Demo
//
//  Created by 天下林子 on 2020/12/22.
//

import SwiftUI

struct TabBar1: View {
    
    @EnvironmentObject var testModel: TableModel
    
    var body: some View {
        
        Text("TabBar 1")
            .edgesIgnoringSafeArea(.all)
            .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
            .background(Color.green)
            .onTapGesture {
                self.testModel.showFullScreen.toggle()
            }
        
    }
}

struct TabBar1_Previews: PreviewProvider {
    static var previews: some View {
        TabBar1()
    }
}
