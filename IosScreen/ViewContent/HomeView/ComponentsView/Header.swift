//
//  Header.swift
//  sceenIos
//
//  Created by Dmitry on 17.11.2023.
//

import SwiftUI



struct Header: View {
    @Binding var username: String
    var body: some View {
        HStack(){
            VStack(alignment: .leading){
                Text("Hello, ")
                    .font(Font.regularText_16)
                    .foregroundColor(Color.textGray)
                Text("Hi, \(username)")
                    .font(Font.boldText_20)
            }
            .padding(.leading, paddingBySideHeader)
            Spacer()
            Image("avatar1")
                .padding(.trailing, paddingBySideHeader)
        }
        .padding()
        
    }
}

struct HeaderAndCard_Previews: PreviewProvider {
    static var previews: some View {
        VStack{
            Header(username: .constant("James"))
            BlueCard(doctor: .constant(InfoDoctor(
                image: Image("doctor1"),
                name: "Dr. Imran Syahir",
                jobTitle: "General Doctor",
                data: "Sunday, 12 June",
                time: "11:00 - 12:00 AM")))
        }
    }
}
