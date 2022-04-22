//
//  VehicleSwiftUIView.swift
//  SwiftUI_Demo
//
//  Created by Linhao CUI 崔林豪 on 2022/2/27.
//

import SwiftUI

struct VehicleSwiftUIView<Content: View>: View{
    
    
    private let foregroundColor: Color
    private let backgroundColor: Color
    private let fontSize: CGFloat
    private let content: () -> Content
    init(fontSize: CGFloat, foregroundColor: Color, backgroundColor: Color, @ViewBuilder content: @escaping () -> Content) {
        self.content = content
        self.foregroundColor = foregroundColor
        self.backgroundColor = backgroundColor
        self.fontSize = fontSize
    }
    
    var body: some View {
        Text("Hello, World!")
            .background(Color.gray)
        HStack {
            Spacer(minLength: 0)
            VStack {
                Spacer()
                HStack {
                    Text("开启您的全球之旅途").font(Font.system(size: self.fontSize)).foregroundColor(self.foregroundColor)
                }.padding(EdgeInsets.init(top: fontSize / 2, leading: fontSize, bottom: fontSize / 2, trailing: fontSize)).background(
                    GeometryReader { geo in
                        RoundedRectangle(cornerRadius: geo.size.height / 2)
                            .fill(self.backgroundColor)
                        RoundedRectangle(cornerRadius: geo.size.height / 2).stroke(self.foregroundColor)
                    }
                )
                Spacer()
            }
            Spacer(minLength: 0)
                
        }//.widgetURL(entry.notAvailableURL)
        .overlay(TestIconView(), alignment: .topLeading)
        
    }
}


struct TestIconView: View {
    var body: some View {
        if true {
            Image("111")
                .resizable()
                .frame(width: 40, height: 40, alignment: .center)
        } else {
            //EmptyView()
        }
    }
}


extension Image {
    static func megaera(_ name: String) -> Image {
        Image(name, bundle: .megaera)
    }
}

public extension Bundle {
    static let megaera = Bundle(url: Bundle(for: BundleFinder.self).bundleURL.appendingPathComponent("Megaera.bundle"))!
}

private class BundleFinder {}



