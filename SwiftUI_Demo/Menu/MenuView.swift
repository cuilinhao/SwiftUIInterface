//
//  MenuView.swift
//  SwiftUI_Demo
//
//  Created by 天下林子 on 2020/12/8.
//

import SwiftUI

struct MenuView: View {
    
    @State var plans:[Plan] = [Plan(id: 1, name: "", member: [Plan.Member(name: "", birth: "")], description: "", hasBadge: true)]
    
    var body: some View {
        
        
        VStack{
            Menu("Actions") {
                
                /**
                 list 放在menu中显示不出来
                List{
                    ForEach(plans){plan in
                        Text("123")
                        Text("2343")
                    }
                }
                 */
                
                Text("menu1")
                Button("menu2"){
                    print("+++menu2+++")
                }
                Button("menu3"){
                    print("+++menu3+++")
                }
                Button("menu4"){
                    print("+++menu4+++")
                }
                Button("menu6"){
                    print("++menu6++++")
                }
                
                Button("menu7"){
                    print("+++menu7+++")
                }
                
                
                //.background(Color.green)
                .foregroundColor(.blue)
            }
            .background(Color.pink)
            
            //设置与下面button的距离
            .padding(.bottom, 100)
            
            
            Button("testBtn") {
                print("___haha")
            }
            .background(Color.green)
            .foregroundColor(.purple)
            .font(.largeTitle)
            
            
            Menu("for Each"){
                ForEach(0..<30){ index in
                    Button {
                        
                    } label: {
                        Label("test", image: "111")
                            .frame(width: 100, height: 100, alignment: .center)
                    }
                    
                }
            }
        }
        
    }
    
    func sendOrder(){
        print("______ggg___")
    }
    
}



struct MenuView_Previews: PreviewProvider {
    static var previews: some View {
        MenuView()
    }
}
