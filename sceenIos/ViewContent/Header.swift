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
                    .font(
                        Font.regularText_16)
                    .foregroundColor(Color.textGray)
                Text("Hi, \(username)")
                    .font(
                        Font.boldText_20)
            }
            Spacer()
            Image("avatar1")
        }
        .padding()
        
    }
}

