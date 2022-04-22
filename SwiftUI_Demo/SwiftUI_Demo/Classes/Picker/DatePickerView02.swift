//
//  DatePickerView02.swift
//  SwiftUI_Demo
//
//  Created by 天下林子 on 2020/12/14.
//

import SwiftUI

struct DatePickerView02: View {
    
    @State private var wakeUp = Date()
    
    var dateClosedRange: ClosedRange<Date> {
        let today = Calendar.current.date(byAdding: .minute, value: -1, to: Date())!
        let seven = Calendar.current.date(byAdding: .day, value: 7, to: Date())!
        return today...seven
    }
    
    //设置时间间距
    let dateRange:ClosedRange<Date> = {
        
        let calendar = Calendar.current
        let startComponents = DateComponents(year:2021, month: 1, day: 1)
        let endComponents = DateComponents(year:2021, month: 12, day: 31,hour: 23, minute: 59, second: 59)
        //Cannot convert return expression of type 'Date' to return type 'ClosedRange<Date>'
        return calendar.date(from: startComponents)!...calendar.date(from: endComponents)!
    }()
    
    var body: some View {
        /** ******************** */
        Divider()
        DatePicker("start Date", selection: $wakeUp, in: dateRange, displayedComponents: [.date, .hourAndMinute])
            .datePickerStyle(GraphicalDatePickerStyle())
            //.frame(width: 200, height: 200, alignment: .center)
        //Equatable
    }
}

struct DatePickerView02_Previews: PreviewProvider {
    static var previews: some View {
        DatePickerView02()
    }
}
