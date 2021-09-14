//
//  UserInfo.swift
//  Zerian
//
//  Created by Кирилл on 14.09.2021.
//

import SwiftUI



struct UserInfo_Previews: PreviewProvider {
    static var previews: some View {
        UserInfo()
    }
}


struct UserInfo: View {

    // path to user avatar
    @State var imagePath: String? = nil
    @State var age: Int = 23
    @State var city: String = "Санкт-Петербург"
    let interests: [String] = ["кино", "ночная жизнь"]
    
    var body: some View {
    
        HStack(alignment: .center, spacing: 0){
            
            //UserAvatar
            Image("test_photo")
                .resizable()
                .scaledToFill()
                .frame(width: 92, height: 92)
                .clipShape(Circle())
                .overlay(Circle().stroke(Color.accentColor.opacity(0)))
                .padding(4)
                .overlay(Circle().stroke(Color.blueColor))
            
            // Information
            VStack(alignment: .leading){
                //age
                Text("\(self.age) года")
                    .font(.system(size: 16, weight: .medium))
                    .foregroundColor(Color.white)
                    .padding(.leading, 8)
                
                //City
                HStack(alignment: .center){
                    Image("place_white")
                    Text("\(self.city)")
                        .font(.system(size: 16, weight: .medium))
                        .foregroundColor(Color.white)
                }.padding(.leading, 8)
                
                //Actual interests
                HStack(spacing: 8){
                    CurrentInterestsBlock()
                    CurrentInterestsBlock()
                }.padding(.leading, 8)
                
                
                
                
                
            }
    
        }
        .frame(maxWidth: .infinity, alignment: .leading)
        
        
  }
}

struct CurrentInterestsBlock: View{
    
    var tag: String?
    
    private let colors: [Color]
    private var _color: Color

    init(){
        self.colors  = [
        Color.yellow,
        Color.blueColor,
        Color.orangeColor,
        Color.pinkColor,
        Color.greenColor
        ]
        self._color = colors.randomElement()!
    }
    
    
    var body: some View{
        Text(tag ?? "пусто")
            .padding(.vertical, 4)
            .padding(.horizontal, 20)
            .font(.system(size: 16, weight: .semibold))
            .background(_color)
            .foregroundColor(Color.white)
            .cornerRadius(20)
    }
}

