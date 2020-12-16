//
//  LazyVStackView.swift
//  SwiftUI_Demo
//
//  Created by 天下林子 on 2020/12/15.
//

import SwiftUI

struct LazyVStackView: View {
    
    var plans : [String] = ["0","1","2","3","4"]
    
    var body: some View {
        
        Text("Hello, World!")
       
        
        ScrollView(.horizontal) {
            
            LazyHStack(alignment: .top, spacing: 10) {
                
                ForEach(plans.indices) { index in
                    //Text("Column \($0)")
                    
                    switch index {
                    case 0:
                        NavigationLink("rrrr", destination: LazyHStackView())
                    case 1:
                        NavigationLink("rrrr", destination: LazyHStackView())
                    default:
                        NavigationLink("rrrr", destination: LazyHStackView())
                    }
                }
            }
        }
    }
}

struct LazyVStackView_Previews: PreviewProvider {
    static var previews: some View {
        LazyVStackView()
    }
}
