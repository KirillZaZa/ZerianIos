//
//  CircleImageComponent.swift
//  Zerian
//
//  Created by Кирилл on 31.08.2021.
//

import SwiftUI


struct CircleImageComponent_Previews: PreviewProvider {
    static var previews: some View {
        MessengerScreen()
    }
}

struct CircleImage: View {
    
    let name: String
    
    var body: some View {
        
        VStack {
            
            ZStack(alignment: .topTrailing) {
                UserImage()
                UserMessegesCount()
                    .offset(x: 4.0, y: -8.0)
                CreatorImageView()
                    .offset(x: 0.0, y: 42.0)
            }
            .padding(.top, 8)
            
            UserName(name: name)
            
        }
    
    }
}

fileprivate struct UserImage: View {
    var body: some View{
            Image("test_photo")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 52, height: 52)
                .clipShape(Circle())
                .overlay(Circle().stroke(Color.accentColor.opacity(0)))
                .padding(2)
                .overlay(Circle().stroke(Color.yellow))
    }
}


struct UserName: View{
    
    let name: String
    
    var body: some View{
        Text(name)
            .font(.system(size: 12, weight: .medium))
            .foregroundColor(.white)
            .frame(width: 64)
            .multilineTextAlignment(.center)
            .lineLimit(1)

    }
    
}


struct UserMessegesCount: View{
    
    
    var body: some View{
        Text("5")
            .font(.system(size: 14, weight: .semibold))
            .padding(8)
            .background(Color.yellow)
            .foregroundColor(Color.textColor)
            .clipShape(Circle())
        
    }
    
}

struct CreatorImageView: View{
    
    var isCreator: Bool = true
    
    var body: some View {
        if isCreator {
            Image("creator_icon")
                .resizable()
                .frame(width: 8, height: 8)
                .padding(4)
                .background(Color.white)
                .aspectRatio(contentMode: .fit)
                .clipShape(Circle())
        }
    }
}


