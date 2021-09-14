//
//  DialogsWrapper.swift
//  Zerian
//
//  Created by Кирилл on 01.09.2021.
//

import SwiftUI

struct DialogsWrapper: View {
        
    
    var body: some View {
        VStack(alignment: .leading, spacing: 0){
            Header()
                .padding(.bottom, 24)
                .padding(.leading, 8)
            ScrollView(.vertical, showsIndicators: false){
                VStack(spacing: 20){
                    ForEach(0..<20){_ in
                        DialogItem()
                    }
                }
            }
            
        }
        .padding(.horizontal, 16)
        .padding(.top, 24)
        .background(Color.wrapperColor)
        .cornerRadius(48, corners: [.topLeft])
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
            .font(.system(size: 17, weight: .semibold))
            .foregroundColor(Color.accentColor)
    }

}


struct DialogItem: View{
    var body: some View{
        
        HStack(alignment: .top){
            UserImage()
            VStack {
                //Имя и время
                HStack(spacing: 8){
                    Text("Виктор Лобанов")
                        .font(.system(size: 16, weight: .bold))
                        .foregroundColor(Color.titleColor)
                        .lineLimit(1)
                        .multilineTextAlignment(.leading)
                        .padding(.trailing, 72)
                    
                    Spacer()
                    
                    Text("15:23")
                        .font(.system(size: 14, weight: .regular))
                        .foregroundColor(Color.textColor.opacity(0.5))
                }
                
                //Сообщение и badge
                HStack {
                    Text("Здаров, ты где? Я за барной стойкой")
                        .font(.system(size: 16, weight: .regular))
                        .foregroundColor(Color.textColor)
                        .lineLimit(1)
                        .multilineTextAlignment(.leading)
                        .padding(.trailing)
                    
                    Spacer()
                    
                    Text("5")
                        .font(.system(size: 14, weight: .semibold))
                        .padding(8)
                        .background(Color.accentColor)
                        .foregroundColor(Color.wrapperColor)
                        .clipShape(Circle())
                }
            }
        }
    }
}

fileprivate struct UserImage: View {
    var body: some View {
        Image("test_photo")
            .resizable()
            .aspectRatio(contentMode: .fill)
            .frame(width: 48, height: 48)
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.wrapperColor.opacity(0)))
            .padding(2)
            .overlay(Circle().stroke(Color.accentColor))
    }
}


