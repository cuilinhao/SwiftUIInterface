//
//  ModelData.swift
//  SwiftUI_Demo
//
//  Created by 崔林豪 on 2020/12/28.
//

import SwiftUI
import Foundation
import Combine


final class ModelData: ObservableObject {
	//https://www.jack-yin.com/coding/ios/3151.html
    
    /**
     //ObservableObject 是一个protocol， 实现ObservableObject的类中使用@Publish修饰的属性
     会被swiftUI监听， 一旦@Published修饰的property发生改变，所有关联的这个ObservableObject对象的view都会被自动更新，需要注意的是，view关联ObservableObject对象的方式是使用@ObservableObject
     修饰property，@ObservableObject修饰对象可以传递给各个独立的
     view，串案时参数名前补需要加$符号，当初正常的引用参数传递，使用ObservableObject，
     @ObservableObject和@Published 可以完全代替@State和@binding
     */
    
	@Published var landmarks: [Landmark] = load("landmarkData.json")
	
}

func load<T: Decodable>(_ filename: String) -> T {
	
	let data: Data
	
	guard let file = Bundle.main.url(forResource: filename, withExtension: nil) else {
		fatalError("Couldn not find \(filename) in main bundle.")
	}
	
	do {
		data = try Data(contentsOf: file)
	}catch {
		fatalError("Could not load \(filename) from main bundle:\n\(error)")
	}
	
	do {
		let decoder = JSONDecoder()
		
		return try decoder.decode(T.self, from: data)
		
	} catch  {
		fatalError("could not parse \(filename) as \(T.self):\n\(error)")
	}
	
}
