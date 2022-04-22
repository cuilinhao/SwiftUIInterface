//
//  ButtonView.swift
//  SwiftUI_Demo
//
//  Created by 天下林子 on 2020/12/4.
//

import SwiftUI


///     HStack {
///         Button("Sign In", action: signIn)
///         Button("Register", action: register)
///     }
///     .buttonStyle(BorderedButtonStyle())

struct ButtonView: View {
    
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

            List{
                ForEach(plans){ plan in
                    switch plan.id {
                    case 1:
                        //NavigationLink(plan, destination: TextFieldView())
                    NavigationLink("Button", destination: ButtonViewDemo())
                        
                    case 2:
                        //NavigationLink(plan, destination: TextFieldView())
                    NavigationLink("EditButton", destination: EditButtonView())
                    case 3:
                        //NavigationLink(plan, destination: TextFieldView())
                    NavigationLink("PastButton", destination: TextFieldView())
                    case 4:
                        //NavigationLink(plan, destination: TextFieldView())
                    NavigationLink("04", destination: TextFieldView())
                    default:
                        
                        NavigationLink("05", destination: TextFieldView())
                    }
                    
                }
            }
            
            .modifier(pf_navigationTitleColor(bgColor: UIColor(.blue), fontColor: .green))
            
        }
    }
        
}


extension Color {
    static func random() -> Color {
        //let random = Double.random(in: 0..<255)
        
        return Color(red: Double.random(in: 0..<255)/255.0, green: Double.random(in: 0..<255)/255.0, blue: Double.random(in: 0..<255)/255.0)
    }
}


    
fileprivate func test() -> some View {
    
    Text("Placeholder")
    
}

struct ButtonView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonView()
    }
}
