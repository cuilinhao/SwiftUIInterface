//
//  FullDetailView.swift
//  SwiftUI_Demo
//
//  Created by 天下林子 on 2020/12/22.
//

import SwiftUI

struct FullDetailView: View {
    
    @EnvironmentObject var testModel: TableModel
    
    var body: some View {
        Text("Hello, World!")
        Text(" fullScreen")
        .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
        .background(Color.orange)
        .onTapGesture {
            self.testModel.showFullScreen.toggle()
        }
        
    }
}

struct FullDetailView_Previews: PreviewProvider {
    static var previews: some View {
        FullDetailView()
    }
}
