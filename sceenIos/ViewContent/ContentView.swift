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

struct NearDoctor{
    let image: Image
    let name: String
    let jobTitle: String
    let rating: String
    let reviews: String
    let distance: String
    let clockTime: String
}

class BackendStrings: ObservableObject{
    @State var username = "James"
    
    @State var doctorOnBlueCard = InfoDoctor(
        image: Image("doctor1"),
        name: "Dr. Imran Syahir",
        jobTitle: "General Doctor",
        data: "Sunday, 12 June",
        time: "11:00 - 12:00 AM")
    
    @State var nearDoctors = [
        NearDoctor(image: Image("doctor2"), name: "Dr. Joseph Brostito", jobTitle: "Dental Specialist", rating: "4,8", reviews: "120", distance: "1.2 KM", clockTime: "17:00"),
        
        NearDoctor(image: Image("doctor1"), name: "Dr. Imran Syahir", jobTitle: "General Doctor", rating: "4,9", reviews: "149", distance: "1.2 KM", clockTime: "15:00")
    ]

    
}

struct ContentView: View {
    
    @ObservedObject private var backendStrings = BackendStrings()
    var body: some View {
        VStack{
            Header(username: $backendStrings.username)
            BlueCard(doctor: $backendStrings.doctorOnBlueCard)
            SearchBar()
            OptionsBlock()
            NearDoctorsBlock(nearDoctors: $backendStrings.nearDoctors)
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
