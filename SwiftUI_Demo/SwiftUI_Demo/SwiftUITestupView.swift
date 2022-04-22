//
//  SwiftUITestupView.swift
//  SwiftUI_Demo
//
//  Created by Linhao CUI 崔林豪 on 2022/3/13.
//

import SwiftUI

struct SwiftUITestupView: View {
    
    let plans: [PlanModel] = Bundle.main.decode("plans.json")
    
    var body: some View {
        
        NavigationView {
            VStack(alignment: .leading) {
                HStack {
                    VStack(alignment: .leading) {
                        addText()
                    }
                    //左对齐
                    Spacer()
                }
                //向上移动
                Spacer()
                    .padding(.init(-50))
            }
            Spacer()
        }
        .navigationTitle(" 表格UI")
        Spacer(minLength: 60)
    }
}

extension SwiftUITestupView {
    func addText() -> some View {
        Text("testTop")
            .foregroundColor(Color.purple)
            .font(.largeTitle)
            .background(Color.secondary)
            
    }
    
}

struct SwiftUITestupView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUITestupView()
    }
}
