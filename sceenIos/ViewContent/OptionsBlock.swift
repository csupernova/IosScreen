//
//  OptionsBlock.swift
//  sceenIos
//
//  Created by Dmitry on 17.11.2023.
//

import SwiftUI


struct OptionsBlock: View {
    
    
    var body: some View {
        let images = [Image("sun"), Image("profile1")]
        HStack(alignment: .top){
            VStack(){
            Circle()
                .frame(width: 80, height: 80)
                .padding(3)
                .foregroundColor(Color(red: 0.98, green: 0.98, blue: 0.98))
                .background(
                images[0])
                Text("Covid 19")
                    .font(Font.regularText_15)
                    .foregroundColor(Color(red: 0.53, green: 0.59, blue: 0.73))
            }
            VStack{
            Circle()
                .frame(width: 80, height: 80)
                .padding(3)
                .foregroundColor(Color(red: 0.98, green: 0.98, blue: 0.98))
                Text("Hello")
                    .font(Font.regularText_15)
                    .foregroundColor(Color(red: 0.53, green: 0.59, blue: 0.73))                }
            VStack{
            Circle()
                .frame(width: 80, height: 80)
                .padding(3)
                .foregroundColor(Color(red: 0.98, green: 0.98, blue: 0.98))
                Text("Medicine")
                    .font(Font.regularText_15)
                    .foregroundColor(Color(red: 0.53, green: 0.59, blue: 0.73))                }
            VStack{
            Circle()
            .frame(width: 80, height: 80)
            .padding(3)
            .foregroundColor(Color(red: 0.98, green: 0.98, blue: 0.98))
                Text("Hospital")
                    .font(Font.regularText_15)
                    .foregroundColor(Color(red: 0.53, green: 0.59, blue: 0.73))                }
        }    }
}

