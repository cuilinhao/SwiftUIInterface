//
//  SwiftUIViewDemo.swift
//  SwiftUI_Demo
//
//  Created by 天下林子 on 2020/12/22.
//

import SwiftUI

struct SwiftUIViewDemo: View {
    
    var plans : [String] = ["1", "2","3","4","5","6","1", "2","3","4","5","6","1", "2","3","4","5","6","1", "2","3","4","5","6","1", "2","3","4","5","6","1", "2","3","4","5","6",]
    
    @State var isActiveTest : Bool = true
    var body: some View {
        ScrollView {
            
            LazyVStack(alignment: .leading){
                ForEach(plans.indices) { index in
                    
                    switch index {
                    case 0 :
//                        NavigationLink(
//                            destination: AnimationDemo(),  label: {
//                                Image("111")
//                                    .resizable()
//                                    .frame(width: 50, height: 50)
//                                    .cornerRadius(25)
//                                Text("GeometryReaderView")
//                                    .foregroundColor(Color.purple)
//                                    .padding()
//                            })
                        self.___configurePushVc({
                            return VehicView()
                            //self.prese
                        }, title: "vehicleTest")
                    case 1:
                        HStack(spacing: 20) {
                            Image("111")
                                .resizable()
                                .frame(width: 50, height: 50)
                                .cornerRadius(25)
                            Button("this is a button") {
                                print("test")
                            }
                            .padding()
                        }
                        .background(Color.green)
                        //.frame(width: UIScreen.main.bounds.size.width, height: 30)
                    case 2:
                        self.configurePushVc()
                    case 3:
                        NavigationLink(destination: VehicleSwiftUIView(fontSize: 30, foregroundColor: .yellow, backgroundColor: .blue, content: {
                            
                            Button("test Vehicle"){
                                print("test Vehicle")
                            }
                        })) {
                            Image("111")
                                .resizable()
                                .frame(width: 50, height: 50)
                                .cornerRadius(25)
                            Text("VehicleSwiftUIView")
                                .foregroundColor(.purple)
                                .padding()
                        }
                    case 4:
                        //let ss = TableViewDemo()
                        self.__configurePushVc {
                            return TableViewDemo()
                        }
                    case 5:
                        self.___configurePushVc({
                            return StackDemo()
                        }, title: "StackDemo")
                    case 6:
                        self.___configurePushVc({
                            return ProgressTestView()
                        }, title: "ProgressTestView")
                    case 7:
                        self.___configurePushVc({
                            return StepperView()
                        }, title: "StepperView")
                    case 8:
                        self.___configurePushVc({
                            return SliderView()
                        }, title: "SliderView")
                    case 9:
                        self.___configurePushVc({
                            return DatePickerDemo()
                        }, title: "DatePickerDemo")
                        //-----------------------------
                        
                    case 10:
                        //let ss = TableViewDemo()
                        self.___configurePushVc({
                            return ToggleView()
                        }, title: "ToggleView")
                    case 11:
                        self.___configurePushVc({
                            return TextUIView()
                        }, title: "TextUIView")
                    case 12:
                        self.___configurePushVc({
                            return TextFieldView()
                        }, title: "TextFieldView")
                    case 13:
                        self.___configurePushVc({
                            return TextEditorView()
                        }, title: "TextEditorView")
                    case 14:
                        self.___configurePushVc({
                            return ButtonViewDemo()
                        }, title: "ButtonViewDemo")
                    case 15:
                        self.___configurePushVc({
                            return MenuView()
                        }, title: "MenuView")

                    case 16:
                        self.___configurePushVc({
                            return CountView()
                        }, title: "CountView")
                    case 17:
                        self.___configurePushVc({
                            return VehicView()
                        }, title: "vehicleTest")
                    default:
                        HStack {
                            Image("111")
                                .resizable()
                                .frame(width: 50, height: 50)
                                .cornerRadius(25)
                            Text("otherTest")
                                .foregroundColor(Color.purple)
                                .padding()
                        }
                    }
                }
            }
        }
    }
      
}

extension SwiftUIViewDemo {
    
    //一个view的实例作为一个参数进行传递
    func configurePushVc() -> some View {
        VStack {
            NavigationLink(
                destination: AnimationDemo(),  label: {
                    Image("111")
                        .resizable()
                        .frame(width: 50, height: 50)
                        .cornerRadius(25)
                    Text("GeometryReaderView")
                        .foregroundColor(Color.purple)
                        .padding()
                })
        }
    }
    
    //一个view的实例作为一个参数进行传递
    func __configurePushVc<Content: View>(_ vv: () -> Content) -> some View {
        VStack {
            NavigationLink(
                destination: vv,  label: {
                    Image("111")
                        .resizable()
                        .frame(width: 50, height: 50)
                        .cornerRadius(25)
                    Text("TableViewDemo")
                        .foregroundColor(Color.purple)
                        .padding()
                })
        }
    }
    
    
    //一个view的实例作为一个参数进行传递
    func ___configurePushVc<Content: View>(_ vv: () -> Content, title: String) -> some View {
        VStack {
            NavigationLink(
                destination: vv,  label: {
                    Image("111")
                        .resizable()
                        .frame(width: 50, height: 50)
                        .cornerRadius(25)
                    Text(title)
                        .foregroundColor(Color.purple)
                        .padding()
                })
        }
    }
    
}

@ViewBuilder func cellView() -> some View {
    
    HStack{
        Image("111")
            .resizable()
            .frame(width: 50, height: 50)
            .cornerRadius(25)
        
        NavigationLink(destination: TableViewTest(), label:{
            Text("TableViewTest")
                .foregroundColor(Color.pink)
                .padding()
        })
    }
}

    
struct SwiftUIViewDemo_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIViewDemo()
    }
}
