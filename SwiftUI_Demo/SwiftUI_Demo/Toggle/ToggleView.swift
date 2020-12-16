//
//  ToggleView.swift
//  SwiftUI_Demo
//
//  Created by 天下林子 on 2020/12/8.
//

import SwiftUI

struct ToggleView: View {
    
    @State private var onRing = false
    @State private var isAddIce = false
    @State private var isAddSugar = false
    
    @State var plan = Plan(id: 10, name: "ff", member: [Plan.Member(name: "", birth: "")], description: "", hasBadge: true)
    
    @ObservedObject var order = OrderModel()
    
    var body: some View {
        
        /** 注释
         2种写法
         
         -----第一种----------------
         let binding = Binding {
             self.plan.specialREquest
             
         } set: {
             //$0 set传的第一个参数（形参的第一个参数）
             self.plan.specialREquest = $0
         }
         
         -----第二种----------------
         let binding2 = Binding {
             self.plan.specialREquest
             
         } set: { new in
             //$0 set传的第一个参数（形参的第一个参数）
             self.plan.specialREquest = new
         }
         
         */
        
        let binding = Binding {
            self.plan.specialREquest
            
        } set: {
            //$0 set传的第一个参数（形参的第一个参数）
            self.plan.specialREquest = $0
        }

        
        VStack{
            
            Toggle(isOn: $onRing) {
                
                Text("Vibrate on Ring")
            }
            .toggleStyle(SwitchToggleStyle())
            .background(Color.green)
            .padding(EdgeInsets(top: 10, leading: 0, bottom: 0, trailing: 0))
            
            //设置与下面button的距离
            .padding(.bottom, 30)
            
            
            Text("分割线")
                .frame(width: UIScreen.main.bounds.size.width, height: 15, alignment: .center)
                .padding()
                .background(Color.pink)
            
            Form{
                
                Section{
                    
                    /**
                    Toggle(isOn: $onRing.animation(), label: {
                        Text(self.plan.specialREquest ? "特殊要求" : "无特殊要求")
                        //不能在这里面改值，因为这个地方是显示值的地方
                        //plan.specialREquest = true
                    })
                     */
                    
                    Toggle(isOn: binding.animation(.easeInOut)) {
                        Text(self.plan.specialREquest ? "特殊要求" : "无特殊要求")
                    }
                    if plan.specialREquest {
                        /** 报错
                         Toggle(isOn: self.plan.isAddSugar) {
                             Text("是否要加糖")
                         }
                         
                         Toggle(isOn: self.plan.isAddIce, label: {
                             Text("是否要加冰"）
                         })
                         */
                        
                        Toggle(isOn: $plan.isAddSugar) {
                            Text("是否要加糖")
                        }
                        

                        Toggle(isOn: $plan.isAddIce) {
                            Text("是否要加冰")
                        }
                        
                        Toggle(isOn: $plan.isAddSugar) {
                            Text("是否要加唐")
                        }
                    }
                    
                }
                
                Text("分割线")
                    .frame(width: UIScreen.main.bounds.size.width, height: 15, alignment: .leading)
                    .padding()
                    .background(Color.pink)
                
                Section{
                    Text("test")
                    Toggle(isOn: $order.specialRequest.animation()) {
                        Text("斗罗大陆")
                            .foregroundColor(Color.pink)
                            .font(.Cuifont(size: 20))
                    }
                    if order.specialRequest {
                        Toggle(isOn: $order.isAddIce, label: {
                            Text("百年魂兽")
                        })
                        
                        Toggle(isOn: $order.addSugar) {
                            Text("魂斗罗")
                        }
                        
                    }
                }
            }
        }
        
    }
}


extension Font {
    public static func FHACondFrenchNC(size: CGFloat) -> Font {
        return Font.custom("FHA Condensed French NC", size: size)
    }
    
    public static func AmericanCaptain(size: CGFloat) -> Font {
        return Font.custom("American Captain", size: size)
    }
    
    public static func Cuifont(size: CGFloat) -> Font {
        return Font.custom("FjallaOne-Regular", size: size)
    }
}

struct TitleFont: ViewModifier {
    let size: CGFloat
    
    func body(content: Content) -> some View {
        return content.font(.Cuifont(size: size))
    }
}


struct ToggleView_Previews: PreviewProvider {
    static var previews: some View {
        ToggleView()
    }
}
