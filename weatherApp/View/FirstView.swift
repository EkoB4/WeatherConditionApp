//
//  FirstView.swift
//  weatherApp
//
//  Created by VB on 25.06.2022.
//

import SwiftUI
import CoreLocationUI
struct FirstView: View {
    @EnvironmentObject var LiveLocation : Locations
    var body: some View {
            VStack{
                VStack{
                    Image("LocationIcon")
                        .resizable()
                        .scaledToFit()
                        Spacer()
                }.background(LinearGradient(colors: [.orange,.purple], startPoint: .top, endPoint: .bottom))
                VStack{
                    Text("Welcome.")
                        .font(.title)
                        .bold()
                        .padding(.vertical)
                    Text("Please give us live location for weather app")
                        .font(.subheadline)
                }.multilineTextAlignment(.center)
                LocationButton(.shareCurrentLocation){
                    LiveLocation.locationReqirument()
                }.foregroundColor(.white)
                .cornerRadius(20)
                Spacer()
            }
        }
}

struct FirstView_Previews: PreviewProvider {
    static var previews: some View {
        FirstView()
    }
}
