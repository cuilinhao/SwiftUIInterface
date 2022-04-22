//
//  TextEditorView.swift
//  SwiftUI_Demo
//
//  Created by 天下林子 on 2020/12/3.
//

import SwiftUI

struct TextEditorView: View {
    
    @State private var fullText: String = "this is some editable text..dsdssdsdsdsddssdsdsdsdsdsdsderererereree222234444.."
    
    var body: some View {
        
        VStack{
            Text("13e3")
            TextEditor(text: $fullText)
                .foregroundColor(.pink)
                .font(.custom("HelveticaNeue", size: 20))
                .lineSpacing(10.0)
                //自动大写
                .autocapitalization(.none)
                .keyboardType(.numberPad)
                .frame(width: 300, height: 100, alignment: .center)
                .keyboardType(.namePhonePad)
                .padding()
            
        }
        
        
    }
}

struct TextEditorView_Previews: PreviewProvider {
    static var previews: some View {
        TextEditorView()
    }
}
