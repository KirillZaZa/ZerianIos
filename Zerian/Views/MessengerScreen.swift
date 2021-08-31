//
//  ContentView.swift
//  Zerian
//
//  Created by Кирилл on 31.08.2021.
//

import SwiftUI


struct MessengerScreen_Previews: PreviewProvider {
    static var previews: some View {
        MessengerScreen()
    }
}

struct MessengerScreen: View {
    
    var body: some View {
        VStack(alignment: .leading) {
            HeaderText()
                .padding(.top, 24)
            
            
            SearchComponent()
                .padding(.top, 20)
            
            
            CurrentEventTextComponent()
                .padding(.top, 32)
            
            
            UserSearchView()
                .padding(.top, 16)
                .padding(.trailing, -56)
                .offset(x: -30)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
        .padding(.horizontal, 30)
        .background(Color.accentColor.edgesIgnoringSafeArea(.all))
        
        
        
    }
}










