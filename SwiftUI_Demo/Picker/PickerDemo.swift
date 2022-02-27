//
//  PickerDemo.swift
//  SwiftUI_Demo
//
//  Created by 天下林子 on 2020/12/11.
//

import SwiftUI

struct PickerDemo: View {
    
     var plans: [String] = ["1","2","3","4","5","6"]
    
    var body: some View {
        
        
            List{
                ForEach(plans, id:\.self) { index in
                    
                    switch index {
                    case "1":
                        HStack{
                            
                            //NavigationLink("01", destination: PickerView())
                            NavigationLink(
                                destination: PickerView(),
                                label: {
                                    Text("0000")
                                        .padding()
                                    Image("222")
                                        .resizable()
                                        .frame(width: 100, height: 100, alignment: .leading)
                                        .foregroundColor(Color.red)
                                        .scaleEffect(1.0, anchor: .leading)
                                        .border(Color.red)
                                })
                        }
                    case "2":
                        HStack{
                            
                            //NavigationLink("01", destination: PickerView())
                            NavigationLink(
                                destination: DatePickerView02(),
                                label: {
                                    Text("111")
                                        .padding()
                                    Image("111")
                                        .resizable()
                                        .frame(width: 100, height: 100, alignment: .leading)
                                        .foregroundColor(Color.red)
                                        .scaleEffect(1.0, anchor: .leading)
                                        .border(Color.red)
                                    
                                })
                        }
                        
                    default:
                        //DatePickerView
                        NavigationLink("02", destination: PickerView02())
                    }
                }
            }
            .navigationBarTitle("Picker Test")
            .modifier(pf_navigationTitleColor(bgColor: .black, fontColor: .cyan))
            .navigationBarTitle("tt", displayMode: .inline)
            //.navigationBarTitle("tt", displayMode: .large)
    }
    
}

struct PickerDemo_Previews: PreviewProvider {
    static var previews: some View {
        PickerDemo()
    }
}
