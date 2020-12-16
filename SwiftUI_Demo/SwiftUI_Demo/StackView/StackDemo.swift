//
//  StackDemo.swift
//  SwiftUI_Demo
//
//  Created by 天下林子 on 2020/12/15.
//

import SwiftUI

struct StackDemo: View {
    
    var plans : [String] = ["0","1","2","3","4"]
    
    var body: some View {
        
        List{
            
            ForEach(plans, id:\.self){ plan in
                
                switch plan {
                
                case "0":
                    NavigationLink(
                        destination: LazyHStackView(),
                        label: {
                            Image("111")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 100, height: 100)
                            
                            Text("LazyHStackView")
                        })
                case "1":
                    NavigationLink(
                        destination: LazyVStackView(),
                        label: {
                            Image("111")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 100, height: 100)
                            
                            Text("LazyVStackView")
                        })
                    
                default:
                    NavigationLink(
                        destination: LazyHStackView(),
                        label: {
                            Image("222")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 100, height: 100)
                            
                            Text("tap me Test")
                        })
                }
            }
        }
        
    }
}

struct StackDemo_Previews: PreviewProvider {
    static var previews: some View {
        StackDemo()
    }
}
