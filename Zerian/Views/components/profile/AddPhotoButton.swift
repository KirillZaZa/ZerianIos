//
//  AddPhotoButton.swift
//  Zerian
//
//  Created by Кирилл on 09.09.2021.
//

import SwiftUI


private struct StyleAddPhotoButton: ButtonStyle{
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
        .padding(.trailing, 32)
        .padding(.leading, 32)

    }
}

struct AddPhotoButton: View{
    var body: some View{
        Button("Добавить фото"){
            
        }.buttonStyle(StyleAddPhotoButton())
            
    }
}

struct AddPhotoButton_Previews: PreviewProvider {
    static var previews: some View {
        AddPhotoButton()
    }
}
