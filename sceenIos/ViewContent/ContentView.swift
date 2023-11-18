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
}

class BackendStrings: ObservableObject{
    @State var username = "James"
    @State var generalDoctor = InfoDoctor(image: Image("doctor1"),name: "Dr. Imran Syahir", jobTitle: "General Doctor")
    
}

struct ContentView: View {
    
    @ObservedObject private var backendStrings = BackendStrings()
    
    var body: some View {
        VStack{
            Header(username: $backendStrings.username)
            BlueCard(generalDoctor: $backendStrings.generalDoctor)
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
