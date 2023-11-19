//
//  OptionsBlock.swift
//  sceenIos
//
//  Created by Dmitry on 17.11.2023.
//

import SwiftUI


struct OptionsBlock: View {
    let buttonTitles = ["Covid 19", "Doctor", "Medicine", "Hospital"]
    let namesImages = ["sun","profile1","link", "hospital"]
    
    var body: some View {
        HStack(alignment: .top){
            ForEach(Array(buttonTitles.enumerated()), id: \.offset) {index, title in
                VStack{
                    Button(
                        action: {print("button pressed") }
                    ){
                        Image(namesImages[index])
                    }
                    .frame(width: optionsFrameSize[0], height: optionsFrameSize[1])
                    .padding(paddingBetweenOptions)
                    .background(Color.primaryGray)
                    .clipShape(Circle())
                    Text(title)
                        .font(Font.regularText_15)
                        .foregroundColor(Color.textGray)
                }
            }
        }
    }
}

struct OptionsBlock_Previews: PreviewProvider {
    static var previews: some View {
        OptionsBlock()
    }
}
