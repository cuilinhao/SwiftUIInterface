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
	
	@Published var landmarks: [Landmark] = load("landmarkData.json")
	
}

func load<T: Decodable>(_ filename: String) -> T {
	
	let data: Data
	
	guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
	else
	{
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
