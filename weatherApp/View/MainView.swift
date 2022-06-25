//
//  MainView.swift
//  weatherApp
//
//  Created by VB on 25.06.2022.
//

import SwiftUI
struct MainView: View {
    @StateObject var locationManager = Locations()
    var body: some View {
        VStack{
            if let location = locationManager.location{
                Text("Coordinate is \(location.longitude) , \(location.latitude)")
            }else{
                if locationManager.isLoading{
                    LoadingView()
                }else{FirstView()
                    .environmentObject(locationManager)}
                
            }
            
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
