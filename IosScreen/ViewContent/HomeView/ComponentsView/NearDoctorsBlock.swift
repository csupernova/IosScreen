//
//  NearDoctorsBlock.swift
//  sceenIos
//
//  Created by Dmitry on 18.11.2023.
//

import SwiftUI

struct NearDoctorsBlock: View {
    @Binding var nearDoctors: [NearDoctor]
    var body: some View {
        HStack{
        Text("Near Doctor")
            .font(Font.semiBoldText_16)
            .padding(.bottom, 20)
            .padding(.top, 20)
            .padding(.leading, 30)
        Spacer()
        }
        HStack{
            VStack(alignment: .leading){
            ForEach(Array(nearDoctors.enumerated()), id: \.offset) {index, item in
                VStack(alignment: .leading){
                HStack{
                    item.image
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .clipShape(Circle())
                        .frame(width: doctorFrameSize[0] , height: doctorFrameSize[1])
                    
                    VStack(alignment: .leading){
                        Text(item.name)
                            .font(Font.boldText_16)
                        Text(item.jobTitle)
                            .font(Font.regularText_14)
                            .foregroundColor(Color.textGray)
                    }
                    Spacer()
                    Image("location")
                    Text(item.distance)
                        .font(Font.regularText_14)
                        .foregroundColor(Color.textGray)
                }
                Divider()
                HStack{
                    Image("clock2")
                    Text("\(item.rating) (\(item.reviews) Reviews)")
                        .font(Font.regularText_12)
                        .foregroundColor(Color.textOrange)
                    Image("clock3")
                        .padding(.leading, 40)
                    Text("Open at \(item.clockTime)")
                        .font(Font.regularText_12)
                        .foregroundColor(Color.primaryBlue)
                    
                }
                .padding(.bottom, 20)
                }
                .padding(.horizontal, 16)
                .shadow(color: Color(red: 0.35, green: 0.46, blue: 0.65).opacity(0.04), radius: 10, x: 2, y: 12)
                .cornerRadius(12)
                }
            }
            .padding(.leading, paddingBySideCardBar)
            .padding(.trailing, paddingBySideCardBar)
        }
    }
}

struct NearDoctorsBlock_Previews: PreviewProvider {
    static var previews: some View {
        NearDoctorsBlock(nearDoctors: .constant(
            [
                NearDoctor(image: Image("doctor2"), name: "Dr. Joseph Brostito", jobTitle: "Dental Specialist", rating: "4,8", reviews: "120", distance: "1.2 KM", clockTime: "17:00"),
                
                NearDoctor(image: Image("doctor1"), name: "Dr. Imran Syahir", jobTitle: "General Doctor", rating: "4,9", reviews: "149", distance: "1.2 KM", clockTime: "15:00")
            ]        ))
    }
}
