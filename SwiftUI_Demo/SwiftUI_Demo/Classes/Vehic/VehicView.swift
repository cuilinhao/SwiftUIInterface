//
//  VehicView.swift
//  SwiftUI_Demo
//
//  Created by Linhao CUI 崔林豪 on 2022/4/22.
//

import SwiftUI

struct VehicView: View {
    var foozle: String = "uuuuuuuuu"
        @State private var hidden = true

        var body: some View {
            GeometryReader { geo in
                VStack {
//                    VStack(alignment: .leading) {
//                        Image("111")
//                            .resizable()
//                            .scaledToFit()
//                            .frame(width: 60, height: 60)
//                            .padding(.top, 35)
//                            .padding(.leading, 25)
//                        Text("新功能【上门补胎】")
//                            .font(.system(size: 20))
//                            .foregroundColor(.black)
//                            .padding(.leading, 25)
//                            .padding(.top, 20)
//
//                        Text("点击后可发起补胎服务，技师会在约定时间驾驶移动服务车到达车辆所在位置。整个服务进程可以通过NIO App维保预约单查看。")
//                            .font(.system(size: 20))
//                            .foregroundColor(.black)
//                            .padding(.leading, 25)
//                            .padding(.top, 10)
//                            .padding(.trailing, 25)
//                    }
//                    .background(Color.red)
//                    .padding(.leading, 25)
//                    .padding(.trailing, 25)
//                    //.cornerRadius(20)
//                    .cornerRadius(20, corners: .allCorners)
//                    .background(Color.white)
                    testAlert()
                }
                .frame(width: geo.size.width, height: geo.size.height)
                .background(Color.black.opacity(0.3))
            }
        }
    
}

extension VehicView {
    @ViewBuilder func testAlert() -> some View {
        GeometryReader { geo in
            VStack {
                VStack(alignment: .leading) {
                    Image("111")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 60, height: 60)
                        .padding(.top, 35)
                        .padding(.leading, 25)
                    Text("新功能【上门补胎】")
                        .font(.system(size: 20))
                        .foregroundColor(.black)
                        .padding(.leading, 25)
                        .padding(.top, 20)
                        
                    Text("点击后可发起补胎服务，技师会在约定时间驾驶移动服务车到达车辆所在位置。整个服务进程可以通过NIO App维保预约单查看。")
                        .font(.system(size: 20))
                        .foregroundColor(.black)
                        .padding(.leading, 25)
                        .padding(.top, 10)
                        .padding(.trailing, 25)
                }
                .background(Color.red)
                .padding(.leading, 25)
                .padding(.trailing, 25)
                //.cornerRadius(20)
                .cornerRadius(20, corners: .allCorners)
                .background(Color.white)
            }
            .frame(width: geo.size.width, height: geo.size.height)
            .background(Color.black.opacity(0.3))
            
        }
    }
}

extension VehicView {
    @ViewBuilder func test() -> some View {
            VStack() {
                Spacer()

                Text(self.foozle)
                    .frame(width: 200, height: 500)
                    .opacity(hidden ? 0 : 1)
                    .background(Color.green.opacity(hidden ? 0 : 1))

                Button(action: {
                    withAnimation(.easeInOut(duration: 2)) {
                        self.hidden.toggle()
                    }
                }) { Text("ugh") }

                Spacer()
            }.frame(width: 320, height: 240).background(Color.red)
    }
}

extension View {
    func cornerRadius(_ radius: CGFloat, corners: UIRectCorner) -> some View {
        clipShape( RoundedCorner(radius: radius, corners: corners) )
    }
}
struct RoundedCorner: Shape {

    var radius: CGFloat = .infinity
    var corners: UIRectCorner = .allCorners

    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
        return Path(path.cgPath)
    }
}


