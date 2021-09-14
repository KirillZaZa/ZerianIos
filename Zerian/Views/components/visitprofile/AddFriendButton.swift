//
//  AddFriendButton.swift
//  Zerian
//
//  Created by Кирилл on 14.09.2021.
//

import SwiftUI

struct AddFriendButton_Previews: PreviewProvider {
    static var previews: some View {
        AddFriendButton()
    }
}

struct AddFriendButton: View {
    var body: some View {
        Button("Добавить в друзья"){
            
        }.buttonStyle(StyleAddFriendButton())
    }
}

private struct StyleAddFriendButton: ButtonStyle{
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .frame(maxWidth: .infinity, maxHeight: 12, alignment: .center)
            .padding()
            .background(Color.white)
            .foregroundColor(Color.accentColor)
            .font(.system(size: 16, weight: .bold))
            .cornerRadius(16)
            .scaleEffect(configuration.isPressed ? 1.2 : 1)
            .animation(.easeOut(duration: 0.2), value: configuration.isPressed)
            .padding(.trailing, 24)
            .padding(.leading, 24)
            .shadow(color: Color.black.opacity(0.1), radius: 8, x: 0.0, y: 8)
    }
}

