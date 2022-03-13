//
//  TextFieldView.swift
//  SwiftUI_Demo
//
//  Created by 天下林子 on 2020/11/30.
//

import SwiftUI


struct TextFieldView: View {
    
    @State private var username: String = "haha"
    @State private var isEditing = false
    
    @State var bingStr: String = "tt"
    
    @State private var givenName: String = ""
    @State private var failyName: String = ""
    
    /** **********绑定值********************* */
    var body: some View {
        
        let binding = Binding {
            bingStr
        } set: {
            bingStr = $0
            //实时监听textField的值
            print("newValue = \($0)")
        }
        
        VStack(spacing:30){
            /** **** 实时监听textfield 修改的值*** */
            TextField("xxz", text: binding)
            
                .border(Color.pink)
                .foregroundColor(Color.green)
            
                .padding()
            
            Spacer()
            
            
            /** TextField()初始化**** *** */
            TextField(
                "User name (email adress)",
                text: $username) { isEditing in
                self.isEditing = isEditing
            } onCommit: {
                //validate(name: username)
                print("+++++++++++++")
                self.isEditing = !self.isEditing
            }
            //自动大写
            .autocapitalization(.none)
            //禁止自动校正
            .disableAutocorrection(true)
            .border(Color.black)
            Text(username)
                .foregroundColor(isEditing ? .red : .blue)

            //初始化方法
            /** **** init方法初始化 *** */
            TextField.init("test change text", text: $username) { isEditing  in
                print("++++123212+++++")
            } onCommit: {
                self.isEditing = !self.isEditing
            }
            .autocapitalization(.none)
            .disableAutocorrection(true)
            .border(Color.black)
            Text(username)
                .foregroundColor(.pink)
        }
    }
}

struct TextFieldView_Previews: PreviewProvider {
    static var previews: some View {
        TextFieldView()
    }
}
