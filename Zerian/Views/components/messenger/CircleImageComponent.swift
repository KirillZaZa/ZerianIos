//
//  CircleImageComponent.swift
//  Zerian
//
//  Created by Кирилл on 31.08.2021.
//

import SwiftUI


struct CircleImageComponent_Previews: PreviewProvider {
    static var previews: some View {
        CircleImageComponent()
    }
}

struct CircleImageComponent: View {
    
    var body: some View {
        
        VStack {
            
            ZStack(alignment: .topTrailing) {
                UserImage()
                UserMessegesCount()
                    .offset(x: 4.0, y: -8.0)
                CreatorImageView()
                    .offset(x: -2.0, y: 56.0)
            }
            .padding(.top, 8)
            
            UserName()
            
        }
    
    }
}

struct UserImage: View {
    var body: some View{
            Image("test_photo")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 72, height: 72)
                .clipShape(Circle())
                .overlay(Circle().stroke(Color.accentColor.opacity(0), lineWidth: 2))
                .padding(2)
                .overlay(Circle().stroke(Color.yellow, lineWidth: 2))
    }
}


struct UserName: View{
    
    var body: some View{
        Text("Виктор")
            .font(.system(size: 18, weight: .bold))
            .foregroundColor(.white)
    }
    
}


struct UserMessegesCount: View{
    
    
    var body: some View{
        Text("5")
            .font(.system(size: 14, weight: .medium))
            .padding(8)
            .background(Color.yellow)
            .foregroundColor(.white)
            .clipShape(Circle())
        
    }
    
}

struct CreatorImageView: View{
    
    var isCreator: Bool = true
    
    var body: some View {
        if isCreator {
            Image("creator_icon")
                .resizable()
                .frame(width: 12, height: 12)
                .padding(4)
                .background(Color.white)
                .aspectRatio(contentMode: .fit)
                .clipShape(Circle())
        }
    }
}
