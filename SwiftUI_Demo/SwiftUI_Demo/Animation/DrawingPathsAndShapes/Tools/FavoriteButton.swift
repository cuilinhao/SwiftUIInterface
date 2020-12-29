//
//  FavoriteButton.swift
//  SwiftUI_Demo
//
//  Created by 天下林子 on 2020/12/29.
//

import SwiftUI

struct FavoriteButton: View {
    
    @Binding var isSet: Bool
    
    var body: some View {
        Button {
            isSet.toggle()
        } label: {
            Image(systemName: isSet ? "start.fill" : "star")
                .foregroundColor(isSet ? Color.yellow : Color.gray)
        }

    }
}

struct FavoriteButton_Previews: PreviewProvider {
    static var previews: some View {
        FavoriteButton(isSet: .constant(true))
    }
}
