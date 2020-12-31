//
//  LandmarkRow.swift
//  SwiftUI_Demo
//
//  Created by 崔林豪 on 2020/12/28.
//

import SwiftUI

struct LandmarkRow: View {
    
//    var landmark: Landmark
    var tt: Landmark
    var tt2: Landmark
    var tt3: Landmark
    
    
    
    var body: some View {
        HStack {
            tt.image
                .resizable()
                .frame(width: 50, height: 50)
            Text(tt.name)
            Spacer()

            if tt.isFavorite {
                Image(systemName: "star.fill")
                    .foregroundColor(.yellow)
            }
        }
    }
}

struct LandmarkRow_Previews: PreviewProvider {
    
    static var landmarks = ModelData().landmarks
    
    static var previews: some View {
        
        Group {
            //LandmarkRow(landmark: landmarks[0])
            //LandmarkRow(landmark: landmarks[1])
            LandmarkRow(tt: landmarks[0], tt2: landmarks[1], tt3: landmarks[2])
            LandmarkRow(tt: landmarks[0], tt2: landmarks[1], tt3: landmarks[2])
        }
        .previewLayout(.fixed(width: 300, height: 70))
    }
}
