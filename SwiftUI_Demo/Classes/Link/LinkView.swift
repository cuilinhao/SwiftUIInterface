//
//  LinkView.swift
//  SwiftUI_Demo
//
//  Created by 天下林子 on 2020/12/8.
//

import SwiftUI

struct LinkView: View {
    var body: some View {
        
        Link("link Test", destination: URL(string: "https:www.baidu.com")!)
        
    }
}

struct LinkView_Previews: PreviewProvider {
    static var previews: some View {
        LinkView()
    }
}
