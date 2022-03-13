//
//  TableView03.swift
//  SwiftUI_Demo
//
//  Created by 天下林子 on 2020/12/22.
//

import SwiftUI

struct TableView03: View {
    
    @EnvironmentObject var testModel: TableModel
    
    var body: some View {
        ZStack{
            TabView {
                TabBar1().environmentObject(self.testModel)
                    .tabItem {
                        Image(systemName: "1.square.fill")
                        Text("First")
                    }
                TabBar2()
                    .tabItem {
                        Image(systemName: "2.square.fill")
                        Text("Second")
                    }
            }
            
            if self.testModel.showFullScreen {
                FullDetailView().environmentObject(self.testModel)
            }
        }
        
        
    }
}

struct TableView03_Previews: PreviewProvider {
    static var previews: some View {
        TableView03().environmentObject(TableModel())
    }
}
