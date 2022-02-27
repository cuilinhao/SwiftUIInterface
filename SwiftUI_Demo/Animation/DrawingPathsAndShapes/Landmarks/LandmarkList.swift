//
//  LandmarkList.swift
//  SwiftUI_Demo
//
//  Created by 崔林豪 on 2020/12/28.
//

import SwiftUI

struct LandmarkList: View {
    
    @EnvironmentObject var modelData: ModelData
    @State private var showFavoritesOnly = false
    
    var filteredLandmarks: [Landmark] {
        //landmarks数组过滤
        modelData.landmarks.filter { landmark in
            (!showFavoritesOnly || landmark.isFavorite)
        }
    }
    
    var body: some View {
        
        //NavigationView {
            List {
                Toggle(isOn: $showFavoritesOnly) {
                    Text("Favorites Only")
                }
                
                ForEach(filteredLandmarks) { landmark in
                    
                    //跳转到 LandmarkDetail  显示的内容是LandmarkRow
                    NavigationLink(destination: LandmarkDetail(landMark: landmark)) {
                        //LandmarkRow(landmark: landmark)
                        LandmarkRow(tt: landmark, tt2: landmark, tt3: landmark)
                        
                    }
                }
            }
            .navigationTitle("Landmarks")
        //}
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkList()
            .environmentObject(ModelData())
    }
}
