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
    
    let horizontalPadding: CGFloat = 16
    
    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            HeaderText()

            SearchBar()
            
            CurrentEventText()
            
            UserScrollView(horizontalPadding: horizontalPadding)
                .padding(.trailing, -horizontalPadding * 2)
                .offset(x: -horizontalPadding)
            
            DialogsWrapper()
                .padding(.horizontal, -horizontalPadding)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
        .padding(.horizontal, horizontalPadding)
        .padding(.top , 12)
        .background(Color.accentColor.edgesIgnoringSafeArea(.all))
        
        
        
    }
}










