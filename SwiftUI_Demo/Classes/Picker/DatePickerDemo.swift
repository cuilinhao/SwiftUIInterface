//
//  DatePickerDemo.swift
//  SwiftUIDemo_v5.3
//
//  Created by SPDBVIP455SPDBVIP455SPDBVIP455SPDBVIP455 on 2020/11/25.
//

import SwiftUI

struct DatePickerDemo: View {
    @State private var date = Date()
    
    let dateRange:ClosedRange<Date> = {
        var calendar = Calendar.init(identifier: .chinese)
//        calendar.identifier =
        let startComponents = DateComponents.init(year: 2020, month: 11, day: 25)
        let endComponents = DateComponents(year:2020, month: 12, day: 25, hour: 6)
        let range = calendar.date(from: startComponents)! ... calendar.date(from: endComponents)!
        return range
    }()
    
    ///date to string
    let dateStr = { (date:Date) -> (String) in
        let formatter = DateFormatter()
        formatter.dateFormat = "YYYY-MM-dd HH:mm:ss"
        let tmp = formatter.string(from: date) //日期转字符串
//            let tmp = formatter.date(from: "") //字符串转日期
        return tmp
    }
    
    var body: some View {
        
        NavigationView {
            Form {
                DatePicker("xxz", selection: $date)
                    .datePickerStyle(WheelDatePickerStyle())
                
                DatePicker("xxz", selection: $date)
                    .datePickerStyle(CompactDatePickerStyle())
                
                DatePicker("xxz", selection: $date)
                    .datePickerStyle(GraphicalDatePickerStyle())
                
                DatePicker("xxz", selection: $date, displayedComponents: [.date])
                
                Text(dateStr(date))
                    .padding()
                    .border(Color.blue)
                
                //设置日期范围和组件
                DatePicker("xxz", selection: $date, in: dateRange, displayedComponents: [.hourAndMinute])
                    .datePickerStyle(WheelDatePickerStyle())
            }
            .navigationTitle("DatePicker")
        }
    }
}

struct DatePickerDemo_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            DatePickerDemo()
        }
    }
}
