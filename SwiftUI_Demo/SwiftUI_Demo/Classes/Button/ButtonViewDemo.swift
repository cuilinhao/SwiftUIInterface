//
//  ButtonViewDemo.swift
//  SwiftUI_Demo
//
//  Created by 天下林子 on 2020/12/7.
//

import SwiftUI

struct ButtonViewDemo: View {
    
    
    var plans2 : [String] = ["01","02","03","04","05","06","07","08","09","10","11","12","13","14","15","16","17","18","19","20"]
    var plans: [Plan] = [
        Plan(id: 1, name: "", member: [Plan.Member(name: "", birth: "")], description: "", hasBadge: false),
        Plan(id: 2, name: "", member: [Plan.Member(name: "", birth: "")], description: "", hasBadge: false),
        Plan(id: 3, name: "", member: [Plan.Member(name: "", birth: "")], description: "", hasBadge: false),
        Plan(id: 4, name: "", member: [Plan.Member(name: "", birth: "")], description: "", hasBadge: false),
        Plan(id: 5, name: "", member: [Plan.Member(name: "", birth: "")], description: "", hasBadge: false),
        Plan(id: 6, name: "", member: [Plan.Member(name: "", birth: "")], description: "", hasBadge: false),
        Plan(id: 7, name: "", member: [Plan.Member(name: "", birth: "")], description: "", hasBadge: false)
    ]
    
    @State var colorNum: Int = 0
    
    var body: some View {
        VStack{
            Text("Hello, World!")
                .padding()
            Button("test ") {
                print("+++++++++++++")
            }
            
            List{
                ForEach(plans){ plan in
                    
                    //self.colorNum = plan.id
                    
                    Button("add Item") {
                        print("---点击到我了--")
                    }
                    .background(Color.pink)
                    .listRowBackground(Color.random())
                }
            }
            .background(Color.pink)
            .foregroundColor(Color.black)
        }

    }
}

struct ButtonViewDemo_Previews: PreviewProvider {
    static var previews: some View {
        ButtonViewDemo()
    }
}
