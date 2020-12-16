//
//  DatePickerView.swift
//  SwiftUI_Demo
//
//  Created by 天下林子 on 2020/12/14.
//

import SwiftUI

struct DatePickerView: View {
    
    @State private var date = Date()
    @State private var wakeUp = Date()
    
    var body: some View {

        VStack{
//            Form{
            Button("eidt"){
                //打印值
                print("___\(date)______\(wakeUp)")
            }
                /** ******************** */
                datePickerTest()
                    .padding()
                
                Divider()
                /** ******************** */
            
                DatePicker("Please ", selection: $wakeUp)
                    .datePickerStyle(WheelDatePickerStyle())
                    //隐藏前面的label 就是隐藏 Please enter a date
                    .labelsHidden()
                    .listRowBackground(Color.gray)
                    .padding()
                
                DatePicker("Please ", selection: $wakeUp)
                DatePicker("please test", selection: $wakeUp, displayedComponents: [.date])
                
                Divider()
                /** **************** */
                datePickerTest02($date)
//            }
        }
    }
    
}



//func ttt() -> some View {
//    //?
//    var body: some View {
//        DatePicker("Please enter a date", selection: $wakeUp)
//            .labelsHidden()
//    }
//
//}

struct testView: View{
    
    @State private var wakeUp = Date()
    
        var body: some View {
            DatePicker("Please enter a date", selection: $wakeUp)
                .labelsHidden()
        }
}

@ViewBuilder func datePickerTest() -> some View {
    
    var ss: Date = Date()
    let bing = Binding {
        ss
    } set: {
        ss = $0
    }
    
    
    //let range = Date().addingTimeInterval(86400)
    
    //DatePicker("rr", selection: bing, in: range, displayedComponents: nil)
    
    //public protocol DatePickerStyle {
//}

    /**
     样式：
     CompactDatePickerStyle : DatePickerStyle
     DefaultDatePickerStyle
     GraphicalDatePickerStyle
     WheelDatePickerStyle
     */
    
    DatePicker("haha", selection: bing)
        //.datePickerStyle(WheelDatePickerStyle())//齿轮样式
//        .datePickerStyle(DefaultDatePickerStyle())
        //.datePickerStyle(CompactDatePickerStyle())//紧凑的
        //.datePickerStyle(GraphicalDatePickerStyle())//日历模式
        
    .background(Color.green)
    
    //显示datePicker的值
    let ff:String =  DateFormatter().string(from: ss)
    Text(ff)
    
    Text("______________")
    
}


@ViewBuilder func datePickerTest02(_ date: Binding<Date>) -> some View {
    
    Form{
        
        DatePicker(" start Date", selection: date, displayedComponents: [.date])
        //Text("\(DatePicker.self)")
        
        /** *********
         Date picker 提供了一组配置 configuration 选项，用于控制它的工作方式。首先，我们可以用 displayedComponents 来决定用户会看到哪些选项：
         如果你不提供这个参数，用户会看到天，小时和分钟。
         如果你用.date ，用户会看到月、天和年。
         如果你用 .hourAndMinute，用户会看到小时和分钟组件。

         ******** */
        
        DatePicker("Please enter a time", selection: date, displayedComponents: .hourAndMinute)
    }
    
}

struct DatePickerView_Previews: PreviewProvider {
    static var previews: some View {
        DatePickerView()
    }
}
