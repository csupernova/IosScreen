//
//  ContentView.swift
//  sceenIos
//
//  Created by Dmitry on 16.11.2023.
//

import SwiftUI


struct InfoDoctor{
    let image: Image
    let name: String
    let jobTitle: String
    let data: String
    let time: String
}

class BackendStrings: ObservableObject{
    @State var username = "James"
    @State var doctorOnBlueCard = InfoDoctor(
        image: Image("doctor1"),
        name: "Dr. Imran Syahir",
        jobTitle: "General Doctor",
        data: "Sunday, 12 June",
        time: "11:00 - 12:00 AM")
    
}

struct ContentView: View {
    
    @ObservedObject private var backendStrings = BackendStrings()
    
    var body: some View {
        VStack{
            Header(username: $backendStrings.username)
            BlueCard(doctor: $backendStrings.doctorOnBlueCard)
            SearchBar()
            OptionsBlock()
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
