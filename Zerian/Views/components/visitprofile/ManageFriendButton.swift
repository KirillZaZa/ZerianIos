//
//  ManageFriendButton.swift
//  Zerian
//
//  Created by Кирилл on 14.09.2021.
//

import SwiftUI

struct ManageFriendButton: View {
    var body: some View {
        Button("В друзьях"){
            
        }.buttonStyle(StyleManageFriendButton())
    }
}

private struct StyleManageFriendButton: ButtonStyle{
    func makeBody(configuration: Configuration) -> some View {
        HStack{
            configuration.label
            Image("galka")
        }
        .frame(maxWidth: .infinity, maxHeight: 12, alignment: .center)
        .padding()
        .background(Color.white)
        .foregroundColor(Color.accentColor)
        .font(.system(size: 16, weight: .bold))
        .cornerRadius(16)
        .scaleEffect(configuration.isPressed ? 1.2 : 1)
        .animation(.easeOut(duration: 0.2), value: configuration.isPressed)
    
        .shadow(color: Color.black.opacity(0.1), radius: 8, x: 0.0, y: 8)
        
    }
}

struct ManageFriendButton_Previews: PreviewProvider {
    static var previews: some View {
        ManageFriendButton()
    }
}
