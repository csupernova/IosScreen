//
//  HomeView.swift
//  sceenIos
//
//  Created by Dmitry on 19.11.2023.
//

import SwiftUI

struct HomeView: View {
    
    @ObservedObject private var backendStrings = BackendStrings()
    
    var body: some View {
        ScrollView{
    VStack{
        Header(username: $backendStrings.username)
        BlueCard(doctor: $backendStrings.doctorOnBlueCard)
        SearchBar()
        OptionsBlock()
        NearDoctorsBlock(nearDoctors: $backendStrings.nearDoctors)
        Spacer()
    }
        }    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
