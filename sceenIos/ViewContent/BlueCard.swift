//
//  BlueCard.swift
//  sceenIos
//
//  Created by Dmitry on 17.11.2023.
//

import SwiftUI

struct BlueCard: View {
    
    @Binding var doctor: InfoDoctor
    
    var body: some View {
        VStack(alignment: .leading){
            HStack{
                doctor.image
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .clipShape(Circle())
                    .frame(width: doctorFrameSize[0] , height: doctorFrameSize[1])
                VStack(alignment: .leading){
                    Text(doctor.name)
                .font(Font.boldText_16)
                .foregroundColor(.white)
                .padding(.bottom, namePaddButtom)
                .frame(height: 10)
            
                Text(doctor.jobTitle)
                    .font(Font.regularText_14)
                    .foregroundColor(Color.textColorSky)
            }
                .frame(alignment: .top)
                Spacer()
                Button(
                    action: {print("Button(arrow) pressed") }
                ){
                        Image("arrow")
                }
            }
            Divider()
        
            HStack{
                Image("calendar")
                Text(doctor.data)
                    .font(Font.regularText_12)
                    .foregroundColor(.white)
                Spacer()
                Image("clock")
                Text(doctor.time)
                    .padding(.trailing, 30)
                    .font(Font.regularText_12)
                    .foregroundColor(.white)
            }
        }
        .frame(width: 327, alignment: .top)
        .padding(20)
        .background(Color.primaryBlue)
        .cornerRadius(12)
        
    }
}


struct BlueCard_Previews: PreviewProvider {
    static var previews: some View {
        BlueCard(doctor: .constant(InfoDoctor(
            image: Image("doctor1"),
            name: "Dr. Imran Syahir",
            jobTitle: "General Doctor",
            data: "Sunday, 12 June",
            time: "11:00 - 12:00 AM")))
    }
}
