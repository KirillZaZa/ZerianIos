//
//  DialogsWrapper.swift
//  Zerian
//
//  Created by Кирилл on 01.09.2021.
//

import SwiftUI

struct DialogsWrapper: View {
    var body: some View {
        VStack{
            Header()
            
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
        .padding(.leading, 32)
        .padding(.top, 24)
        .background(Color.wrapperColor)
        .cornerRadius(56, corners: [.topLeft])
        .edgesIgnoringSafeArea(.all)
    }
}

struct DialogsWrapper_Previews: PreviewProvider {
    static var previews: some View {
        MessengerScreen()
    }
}


struct Header: View {
    
    var body: some View{
        Text("Все сообщения")
            .font(.system(size: 16, weight: .medium))
            .foregroundColor(Color.textColor)
    }

}


struct DialogItem: View{
    var body: some View{
        HStack(alignment: .top, spacing: 4){
            UserImage()
        }
    }
}

fileprivate struct UserImage: View {
    var body: some View {
        Image("test_photo")
            .resizable()
            .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
            .frame(width: 36, height: 36)
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.wrapperColor.opacity(0)))
            .padding(2)
            .overlay(Circle().stroke(Color.accentColor))
    }
}




