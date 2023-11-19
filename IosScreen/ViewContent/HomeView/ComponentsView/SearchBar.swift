//
//  SearchBar.swift
//  sceenIos
//
//  Created by Dmitry on 18.11.2023.
//

import SwiftUI

struct SearchBar: View {
    @State var hello = "Search doctor or health issue"
    var body: some View {
        HStack(alignment: .center){
            Image("search")
            TextField("Search", text: $hello)
                .font(Font.regularText_15)
                .foregroundColor(Color.textGray)
        }
        .padding(16)
        .background(Color.primaryGray)
        .cornerRadius(12)
        .padding(.trailing, paddingBySideCardBar)
        .padding(.leading, paddingBySideCardBar)
        .padding(.top, 20)
        .padding(.bottom, 24)
    }
}


struct SearchBar_Previews: PreviewProvider {
    static var previews: some View {
        SearchBar()
    }
}
