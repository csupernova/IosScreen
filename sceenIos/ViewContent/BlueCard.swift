//
//  BlueCard.swift
//  sceenIos
//
//  Created by Dmitry on 17.11.2023.
//

import SwiftUI

struct BlueCard: View {
    
    @Binding var generalDoctor: InfoDoctor
    
    var body: some View {
        VStack(alignment: .leading){
            HStack{
                generalDoctor.image
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .clipShape(Circle())
                    .frame(width: 59, height: 74)
                VStack{
                    Text(generalDoctor.name)
                .font(Font.boldText_16)
                .foregroundColor(.white)
            
                Text(generalDoctor.jobTitle)
                    .font(Font.regularText_14)
                    .foregroundColor(Color.textColorSky)
            }
                Spacer()
                Image("arrow")
            }
            Divider()
            HStack{
                Image("calendar")
                Text("Sunday, 12 June")
                    .font(Font.regularText_12)
                    .foregroundColor(.white)
                Spacer()
                Image("clock")
                Text("11:00 - 12:00 AM")
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
        BlueCard(generalDoctor: .constant(InfoDoctor(image: Image("doctor1"),name: "Dr. Imran Syahir", jobTitle: "General Doctor")))
    }
}
