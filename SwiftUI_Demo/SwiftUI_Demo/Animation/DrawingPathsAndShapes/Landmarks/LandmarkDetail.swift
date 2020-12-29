//
//  LandmarkDetail.swift
//  SwiftUI_Demo
//
//  Created by 崔林豪 on 2020/12/28.
//

import SwiftUI

struct LandmarkDetail: View {
    
	//EnvironmentObject 我们可以把一个对象注入环境，以便任何子视图都可以自动获得该对象的访问能力。
	@EnvironmentObject var modelData: ModelData
	
    //@Published
	var landMark: Landmark
	
	var landmarkIndex: Int {
		modelData.landmarks.firstIndex(where: {
			$0.id == landMark.id
		})!
	}
	
    var body: some View {
        
		ScrollView {
            MapView(coordinate: landMark.locationCoordinate)
                .ignoresSafeArea(edges: .top)
                .frame(height: 300)
            
		}
    }
}

struct LandmarkDetail_Previews: PreviewProvider {
	
	static let modelData  = ModelData()
	
    static var previews: some View {
		LandmarkDetail(landMark: modelData.landmarks[0]).environmentObject(modelData)
    }
	
}
