//
//  NavogationView.swift
//  sceenIos
//
//  Created by Dmitry on 19.11.2023.
//

import SwiftUI


enum TabItems: Int, CaseIterable{
    case home = 0
    case calendar
    case messages
    case profile
    
    var title: String{
        switch self {
        case .home:
            return "Home"
        case .calendar:
            return "Calendar"
        case .messages:
            return "Chat"
        case .profile:
            return "Profile"
        }
    }
    
    var imageName: String{
        switch self {
        case .home:
            return "Home"
        case .calendar:
            return "calendar2"
        case .messages:
            return "message"
        case .profile:
            return "profile2"
        }
    }
}

extension NavigationView{
    func CustomTabItem(imageName: String, title: String, isActive: Bool) -> some View{
        HStack(spacing: 5){
            Spacer()
            Image(imageName)
                .resizable()
                .foregroundColor(isActive ? Color.blueSky : .gray)
                .frame(width: 23, height: 23)
            if isActive{
                Text(title)
                    .font(Font.nunitoBold_14)
                    .foregroundColor(isActive ? Color.blueSky : .gray)
            }
            Spacer()
        }
        .frame(width: isActive ? .infinity: buttonFrameSize[0],
               height: buttonFrameSize[1])
        .background(isActive ? Color.navigBlue : Color.white)
        .cornerRadius(12)
        
    }
}

struct NavigationView: View {
    
    @State var selectedTab = 0

    var body: some View {
        ZStack(alignment: .bottom){
            TabView(selection: $selectedTab) {
                HomeView()
                    .tag(0)
                
                CalendarView()
                    .tag(1)

                MessagesView()
                    .tag(2)

                ProfileView()
                    .tag(3)
            }
            .ignoresSafeArea(.keyboard)
            HStack{
                ForEach((TabItems.allCases), id: \.self){ item in
                    Button{
                        selectedTab = item.rawValue
                    } label: {
                        CustomTabItem(imageName: item.imageName, title: item.title, isActive: (selectedTab == item.rawValue))
                    }
                }
            }
            .frame(height: 70)
            .background(.white)
            .padding(.leading, paddingBySideCardBar)
            .padding(.trailing, paddingBySideCardBar)
            
        }
        
    }
}

struct NavogationView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView()
    }
}
