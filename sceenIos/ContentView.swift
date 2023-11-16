//
//  ContentView.swift
//  sceenIos
//
//  Created by Dmitry on 16.11.2023.
//

import SwiftUI


struct ContentView: View {
    var body: some View {
        VStack{
            HStack(){
                VStack(alignment: .leading){
                    Text("Hello, ")
                        .font(
                            Font.custom("Poppins", size: 16))
                        .foregroundColor(Color(red: 0.53, green: 0.59, blue: 0.73))
                    Text("Hi James")
                        .font(
                            Font.custom("Poppins",size:20)
                                .weight(.bold))
                }
                Spacer()
                Text("Ic")
            }
            .padding()
            VStack(alignment: .leading){
                HStack{
                    VStack{
                Text("Dr. Imran Syahir")
                    .font(
                        Font.custom("Poppins", size: 16)
                            .weight(.bold))
                    .foregroundColor(.white)
                    .padding(2)
                
                Text("General Doctor")
                    .font(Font.custom("Poppins", size: 14))
                    .foregroundColor(Color(red: 0.8, green: 0.88, blue: 1))
                }
                    Spacer()
                    Text("Ic")
                }
                Divider()
                HStack{
                    Text("Ic")
                    Text("Sunday, 12 June")
                        .font(Font.custom("Poppins", size: 12))
                        .foregroundColor(.white)
                    Spacer()
                    Text("Ic")
                    Text("11:00 - 12:00 AM")
                        .padding(.trailing, 30)
                        .font(Font.custom("Poppins", size: 12))
                        .foregroundColor(.white)
                }
            }
            .padding(20)
            .frame(width: 327, alignment: .top)
            .background(Color(red: 0.28, green: 0.58, blue: 1))
            .cornerRadius(12)
            HStack(alignment: .center, spacing: 12){
                Text("Ic")
                Text("Search doctor or health issue")
                    .font(Font.custom("Poppins", size: 15))
                    .foregroundColor(Color(red: 0.53, green: 0.59, blue:0.73))
            }
            .padding(16)
            .frame(width: 327, alignment: .leading)
            .background(Color(red: 0.98, green: 0.98, blue: 0.98))
            .cornerRadius(12)
            
            HStack(alignment: .top){
                VStack(){
                Circle()
                    .frame(width: 80, height: 80)
                    .padding(3)
                    .foregroundColor(Color(red: 0.98, green: 0.98, blue: 0.98))
                    Text("Covid 19")
                        .font(Font.custom("Poppins", size: 15))
                        .foregroundColor(Color(red: 0.53, green: 0.59, blue: 0.73))
                }
                VStack{
                Circle()
                    .frame(width: 80, height: 80)
                    .padding(3)
                    .foregroundColor(Color(red: 0.98, green: 0.98, blue: 0.98))
                    Text("Doctor")
                        .font(Font.custom("Poppins", size: 15))
                        .foregroundColor(Color(red: 0.53, green: 0.59, blue: 0.73))                }
                VStack{
                Circle()
                    .frame(width: 80, height: 80)
                    .padding(3)
                    .foregroundColor(Color(red: 0.98, green: 0.98, blue: 0.98))
                    Text("Medicine")
                        .font(Font.custom("Poppins", size: 15))
                        .foregroundColor(Color(red: 0.53, green: 0.59, blue: 0.73))                }
                VStack{
                Circle()
                .frame(width: 80, height: 80)
                .padding(3)
                .foregroundColor(Color(red: 0.98, green: 0.98, blue: 0.98))
                    Text("Hospital")
                        .font(Font.custom("Poppins", size: 15))
                        .foregroundColor(Color(red: 0.53, green: 0.59, blue: 0.73))                }
            }
            Spacer()
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
