////
////  NavigationBarColorDemo.swift
////  SwiftUILearning_v5.3
////
////  Created by SPDBVIP455SPDBVIP455SPDBVIP455SPDBVIP455 on 2020/12/7.
////
//
//import SwiftUI
//
//struct NavigationConfigurator: UIViewControllerRepresentable {
//    var configure: (UINavigationController) -> Void = { _ in }
//
//    func makeUIViewController(context: UIViewControllerRepresentableContext<NavigationConfigurator>) -> UIViewController {
//        UIViewController()
//    }
//    func updateUIViewController(_ uiViewController: UIViewController, context: UIViewControllerRepresentableContext<NavigationConfigurator>) {
//        if let nc = uiViewController.navigationController {
//            self.configure(nc)
//        }
//    }
//
//}
//
//func getImageWithColor(color:UIColor)->UIImage{
//        let rect = CGRect(x: 0, y: 0, width: 1, height: 1)
//        UIGraphicsBeginImageContext(rect.size)
//        let context = UIGraphicsGetCurrentContext()
//        context!.setFillColor(color.cgColor)
//        context!.fill(rect)
//        let image = UIGraphicsGetImageFromCurrentImageContext()
//        UIGraphicsEndImageContext()
//        return image!
//    }
//
//struct NavigationBarModifier:ViewModifier {
//    var bgColor:UIColor
//    var fontColor:UIColor
//    var fontSize:CGFloat
//    
//    init(bgColor:UIColor, fontColor:UIColor, _ fontSize:CGFloat = 18.0) {
//        self.bgColor = bgColor
//        self.fontColor = fontColor
//        self.fontSize = fontSize
//        
////        UINavigationBar.appearance().setBackgroundImage(getImageWithColor(color: bgColor), for: .default)
//        
////        UINavigationBar.appearance().barTintColor = .clear
////        UINavigationBar.appearance().shadowImage = getImageWithColor(color: .yellow)
////
////        UINavigationBar.appearance().titleTextAttributes = [
////            NSAttributedString.Key.font: UIFont.systemFont(ofSize: fontSize, weight: .medium),
////            NSAttributedString.Key.foregroundColor: fontColor,
////        ]
////        UINavigationBar.appearance().largeTitleTextAttributes = [
////            NSAttributedString.Key.font: UIFont.systemFont(ofSize: 36.0, weight: .bold),
////            NSAttributedString.Key.foregroundColor: UIColor.blue,
////            NSAttributedString.Key.strokeColor: UIColor.black
////        ]
//    }
//    
//    func body(content: Content) -> some View {
//        ZStack{
//            content
//            VStack {
//                GeometryReader { geometry in
//                    Color(self.bgColor)
//                        .frame(height: geometry.safeAreaInsets.top)
//                        .edgesIgnoringSafeArea(.top)
////                    Spacer()
//                }
//            }
//        }
//    }
//}
//
//struct NavigationBarColorDemo: View {
//    @State var isPush:Bool = false
//    
//    @State var rangeArr:[Int] = [0, 1, 2, 3, 4, 5, 6]
//    @State var bgColor:UIColor = .green
//    
//    var body: some View {
//        NavigationView {
//            VStack {
//                
//                List {
//                    ForEach(rangeArr, id:\.self) { index in
//                        Button(action: {
//                            self.isPush = true
//                        }, label: {
//                            NavigationLink("xxz = \(index)", destination: GesturesDemo(isPush: $isPush), isActive: $isPush)
//                                .foregroundColor(.pink)
//                        })
//                    }
//                    .onDelete(perform: { indexSet in
//                        self.rangeArr.remove(at: 0)
//                    }).animation(.linear(duration: 10))
//                    
//                }
//                .modifier(NavigationBarModifier(bgColor: .red, fontColor: .cyan))
////                .background(NavigationConfigurator(configure: { (nav) in
////                    nav.navigationBar.barTintColor = self.bgColor
////                }))
//    //            .navigationTitle("Navigation Bar Color")
//                .navigationBarTitle("Navigation Bar Color", displayMode: .inline)
//                .navigationBarItems(leading: Button(action: {
//
//                }, label: {
//                    Text("Left")
//                        .foregroundColor(Color(self.bgColor))
//                        .font(.system(size: 14))
//                }), trailing: Button(action: {}, label: {
//                    Text("Right")
//                        .foregroundColor(.yellow)
//                        .font(.system(size: 14))
//            }))
//                
//                EditButton()
//                Button(action: {
//                    if self.bgColor == UIColor.red {
//                        self.bgColor = .green
//                    }
//                    else {
//                        self.bgColor = .red
//                    }
//                }, label: {
//                    Text("更换背景颜色")
//                })
//            }
//        }
//        .navigationBarBackButtonHidden(true)
//    }
//}
//
//struct NavigationBarColorDemo_Previews: PreviewProvider {
//    static var previews: some View {
//        NavigationBarColorDemo()
//    }
//}
