//
//  LandmarkDetail.swift
//  SwiftUI_Demo
//
//  Created by 崔林豪 on 2020/12/28.
//

import SwiftUI

struct LandmarkDetail: View {
	
	@EnvironmentObject var modelData: ModelData
	
	var landMark: Landmark
	
	var landmarkIndex: Int {
		modelData.landmarks.firstIndex(where: {
			$0.id == landMark.id
		})!
	}
	
    var body: some View {
        
		ScrollView {
			//Map
		}
    }
}

struct LandmarkDetail_Previews: PreviewProvider {
	
	static let modelData  = ModelData()
	
    static var previews: some View {
		LandmarkDetail(landMark: modelData.landmarks[0]).environmentObject(modelData)
    }
	
}
