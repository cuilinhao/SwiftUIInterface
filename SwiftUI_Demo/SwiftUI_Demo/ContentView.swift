//
//  ContentView.swift
//  SwiftUI_Demo
//
//  Created by 天下林子 on 2020/11/26.
//

import SwiftUI

struct ContentView: View {
    
    var plan : [String] = ["01","02","03","04"]
    
    //TextUIView
    var classArray:[AnyObject] = [CountView(),TextUIView(),TextUIView()] as [AnyObject]
    
    var body: some View{
        
        NavigationView{
            
            List{
                ForEach(plan, id:\.self){ plan in
                    
                    switch plan {
                    case "01":
                        NavigationLink(
                            //destination: ButtonView(),
                            //MenuView
                            destination: SwiftUIViewDemo(),
                            label: {
                                Image("111")
                                    .resizable()
                                    .frame(width: 100, height: 100)
                                    .cornerRadius(50)
                                Text("tap me Test")
                            })
                        
                    case "02":
                        
                        //NavigationLink(plan, destination: TextUIView())
                        NavigationLink(
                            destination: SwiftTableViewDemo(),
                            label: {
                                Image("222")
                                    .resizable()
                                    //.scaledToFit()
                                    .frame(width: 100, height: 100)
                                    .cornerRadius(50)
                                
                                Text("SwiftTableViewDemo")
                            })
                        
                    case "03":
                        //NavigationLink(plan, destination: TextFieldView())
                        NavigationLink(
                            destination: TextFieldView(),
                            label: {
                                Image("222")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 100, height: 100)
                                    .cornerRadius(50)
                                
                                Text("tap me Test")
                            })
                    case "04":
                        NavigationLink(destination: PickerDemo(), label: {
                            Image("111")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 100, height: 100)
                                .cornerRadius(50)
                            
                            Text("tap me Test")
                        })
                    default:
                        NavigationLink(plan, destination: TextFieldView())
                    }
                }
            }
            .navigationBarTitle("test", displayMode: .automatic)
            //.modifier(pf_navigationTitleColor(backGroundColor: .green))
            //.modifier(pf_navigationTitleColor(.red, .green))
            .modifier(pf_navigationTitleColor(bgColor: UIColor(.pink), fontColor: .green))
            
            .navigationBarTitle("SwiftUI_Test")
        }
    }
}


/** 设置navigationBar 颜色 */
 struct pf_navigationTitleColor2: ViewModifier {
    var bgColor:UIColor
    var fontColor:UIColor = .purple
    var fontSize:CGFloat
    
    init(_ bgColor:UIColor, _ fontColor:UIColor, _ fontSize:CGFloat = 18.0) {
        self.bgColor = bgColor
        self.fontColor = fontColor
        self.fontSize = fontSize
        
        UINavigationBar.appearance().barTintColor = bgColor
        UINavigationBar.appearance().shadowImage = UIImage.init()

        UINavigationBar.appearance().titleTextAttributes = [
            NSAttributedString.Key.font: UIFont.systemFont(ofSize: fontSize, weight: .medium),
            NSAttributedString.Key.foregroundColor: fontColor,
        ]
        UINavigationBar.appearance().largeTitleTextAttributes = [
            NSAttributedString.Key.font: UIFont.systemFont(ofSize: 36.0, weight: .bold),
            NSAttributedString.Key.foregroundColor: UIColor.blue,
            NSAttributedString.Key.strokeColor: UIColor.black
        ]
    }
    
    func body(content: Content) -> some View {
        
        ZStack{
            content
            VStack{
                GeometryReader { geometry in
                    Color(self.bgColor)
                        .frame(height:geometry.safeAreaInsets.top)
                        .edgesIgnoringSafeArea(.top)
                }
            }
        }
        
    }
}

struct pf_navigationTitleColor: ViewModifier {
    
    var bgColor:UIColor
    var fontColor:UIColor
    var fontSize:CGFloat
    
    init(bgColor:UIColor, fontColor:UIColor, _ fontSize:CGFloat = 18.0) {
        self.bgColor = bgColor
        self.fontColor = fontColor
        self.fontSize = fontSize
        
    }
    
    func body(content: Content) -> some View {
        ZStack{
            content
            VStack {
                GeometryReader { geometry in
                    Color(self.bgColor)
                        .frame(height: geometry.safeAreaInsets.top)
                        .edgesIgnoringSafeArea(.top)
                }
            }
        }
    }
}

extension View{
    
    func testView(view: AnyView) -> some View {
        Text("1")
    }
}

struct MyNavtionView<Content> : View where Content : View  {
    @State var title: String
    var content: () -> Content
    var body: some View {
        NavigationView {
                content()
                .navigationBarTitle(Text(title), displayMode: .inline)
                .background(NavigationConfigurator(configure: { nav in
                    nav.navigationBar.barTintColor = .white
                    nav.navigationBar.titleTextAttributes = [.foregroundColor : UIColor.purple, .font : UIFont.systemFont(ofSize: 18)]
                }))
        }.navigationViewStyle(StackNavigationViewStyle())
    }
}

/// 改变导航背景色和中间title文字颜色
/*
    NavigationView {
        Text("123")
        .navigationBarTitle(Text("title"), displayMode: .inline)
        .background(NavigationConfigurator(configure: { nav in
            nav.navigationBar.barTintColor = .white
            nav.navigationBar.titleTextAttributes = [.foregroundColor : UIColor.purple]
        }))
    }.navigationViewStyle(StackNavigationViewStyle())
 */
struct NavigationConfigurator: UIViewControllerRepresentable {
    var configure: (UINavigationController) -> Void = { _ in }

    func makeUIViewController(context: UIViewControllerRepresentableContext<NavigationConfigurator>) -> UIViewController {
        UIViewController()
    }
    func updateUIViewController(_ uiViewController: UIViewController, context: UIViewControllerRepresentableContext<NavigationConfigurator>) {
        if let nc = uiViewController.navigationController {
            self.configure(nc)
        }
    }

}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
