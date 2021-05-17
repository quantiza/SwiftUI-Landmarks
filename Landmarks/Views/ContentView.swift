//
//  ContentView.swift
//  Landmarks
//
//  Created by Yang Long on 2021/5/14.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        LandmarkList()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(ModelData()) // add the model object to the environment, which makes the object available to any subview.
    }
}
