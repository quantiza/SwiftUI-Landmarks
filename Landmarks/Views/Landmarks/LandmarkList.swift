//
//  LandmarkList.swift
//  Landmarks
//
//  Created by Yang Long on 2021/5/17.
//

import SwiftUI

struct LandmarkList: View {
    // @EnvironmentObject property declaration to the view, and an environmentObject(_:) modifier to the preview
    // The modelData property gets its value automatically, as long as the environmentObject(_:) modifier has been applied to a parent
    @EnvironmentObject var modelData: ModelData
    @State private var showFavoritesOnly = false
    
    var filteredLandmarks: [Landmark] {
        modelData.landmarks.filter { landmark in
            !showFavoritesOnly || landmark.isFavorite
        }
    }
    
    var body: some View {
        NavigationView {
            List {
                Toggle(isOn: $showFavoritesOnly) {
                    Text("Favorites only")
                }
                
                ForEach(filteredLandmarks) { landmark in
                    NavigationLink(destination: LandmarkDetail(landmark: landmark)) {
                        LandmarkRow(landmark: landmark)
                    }
                }
            }
            .navigationTitle("Landmarks")
        }
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkList()

    }
}
