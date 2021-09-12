//
//  Chat.swift
//  Zerian
//
//  Created by Кирилл on 12.09.2021.
//

import SwiftUI

struct Chat: View {
    var body: some View {
        VStack(){
            
            Toolbar()
                .padding(.top, 24)
                .background(Color.accentColor)
            
            ChatWrapper()
                .padding(.top, 40)
            
            Bottombar()
                .offset(y: -30)
                .background(Color.white)
                .shadow(color: Color.black.opacity(0.1), radius: 10, x: 0.0, y: -15)
            
            
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
        .background(Color.accentColor)
    }
}

struct Chat_Previews: PreviewProvider {
    static var previews: some View {
        Chat()
    }
}
