//
//  EquatableViewTest.swift
//  SwiftUI_Demo
//
//  Created by 天下林子 on 2020/12/21.
//

import SwiftUI

/** 注释
 
 Sometimes we don’t need the true diffing of SwiftUI , or we want to ignore some changes in data, and this is the exact place where we can use the EquatableView struct. EquatableView struct is a wrapper for a View , and it also conforms to View protocol. All you need to do to use EquatableView is conforming your view to Equatable protocol. Let’s take a simple look at a good example.
 
 有时候我们不需要真正区别SwiftUI，或者我们想要忽略数据中的一些变化，这正是我们可以使用EquatableView结构的地方。EquatableView结构是一个视图的包装器，它也遵循视图协议。要使用EquatableView，你需要做的就是让你的视图符合Equatable协议。让我们看一个简单的例子。
 
 */

struct EquatableViewTest: View {
    var body: some View {
        Text("Hello, World!")
        
    }
}


/** 注释
 
 参考资料
 https://swiftwithmajid.com/2020/01/22/optimizing-views-in-swiftui-using-equatableview/
 
 typealias是用来为已经存在的类型重新定义名字的,通过命名,可以使代码变得更加清晰.使用的语法也很简单,使用 typealias 关键字像普通的赋值语句一样,可以将某个在已经存在的类型赋值为新的名字
 
 */

struct CalendarView: View, Equatable {

    let sleeps: [Date: [sleep]]
    let dates: [Date]
    
    var body: some View {
        
        Text("2334")
    }


}

struct EquatableViewTest_Previews: PreviewProvider {
    static var previews: some View {
        EquatableViewTest()
    }
}
