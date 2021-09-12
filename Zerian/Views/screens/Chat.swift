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
                .offset(y: -30.0)
                .background(Color.white)
            
            
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
