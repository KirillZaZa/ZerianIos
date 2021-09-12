//
//  Wrapper.swift
//  Zerian
//
//  Created by Кирилл on 12.09.2021.
//

import SwiftUI



struct ChatWrapper_Previews: PreviewProvider {
    static var previews: some View {
        Chat()
    }
}

struct ChatWrapper: View {
    var body: some View {
        ZStack(alignment: .top){
            VStack(alignment: .center){
                
                ScrollView(.vertical, showsIndicators: false){
                    ChatDate()
                        .padding(.top, 72)
                    
                    Message()
                        .padding(.horizontal, 16)
                        .padding(.top, 32)
                    InviteMessage()
                        .padding(.horizontal, 16)
                        .padding(.vertical, 32)
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity)
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color.wrapperColor)
            .cornerRadius(24, corners: [.topLeft])

            
            UserImageTop()
                .shadow(color: Color.accentColor.opacity(0.5), radius: 8, x: 0.0, y: 4.0)
                .offset(y: -30.0)
           
        }
    }
}

struct ChatDate: View{
    
    @State var date: String = "19 мар, 2021"
    
    var body: some View{
        Text("\(self.date)")
            .font(.system(size: 14, weight: .semibold))
            .foregroundColor(Color.textColor)
    }
}

struct UserImageTop: View{
    var body: some View{
        Image("test_photo")
            .resizable()
            .aspectRatio(contentMode: .fill)
            .frame(maxWidth: 56, maxHeight: 56)
            .clipShape(Circle())
            .overlay(Circle()
                        .stroke(Color.white.opacity(0.0), lineWidth: 2.0))
            .padding(3)
            .overlay(Circle().stroke(Color.accentColor, lineWidth: 2.0))
            
    }
}




