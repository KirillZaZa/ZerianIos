//
//  CurrentEventsFriend.swift
//  Zerian
//
//  Created by Кирилл on 15.09.2021.
//

import SwiftUI

struct CurrentEventsFriend_Previews: PreviewProvider {
    static var previews: some View {
        CurrentEventsFriend()
    }
}

struct CurrentEventsFriend: View {
    //необходим данный класс для отображения списка событий
    //@State var event: [Event]?
    
    var body: some View {
        VStack(spacing: 12){
            Event()
            Event()
        }
        .frame(maxWidth: .infinity)
        .padding(.vertical, 24)
        .background(Color.white)
        .cornerRadius(48)
    }
}

private struct Event: View{
    
    //@State var img: Image
    //@State var time: String
    //@State var place: String
    //@State var name: String
    
    var body: some View{
        HStack(alignment: .center){
            
            //Image
            Image("test_photo")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(maxWidth: 64, maxHeight: 56)
                .cornerRadius(6)
                .padding(4)
                .overlay(RoundedRectangle(cornerRadius: 12)
                            .stroke(Color.textColor.opacity(0.1), lineWidth: 8.0))
                .padding(2)
                .overlay(RoundedRectangle(cornerRadius: 12)
                            .stroke(Color.lightBlueColor, lineWidth: 6.0))
            
            VStack(alignment: .leading){
                
                //Name
                HStack(alignment: .center){
                    
                    Text("DJ-SET в Контакте")
                        .font(.system(size: 14, weight: .semibold))
                        .frame(maxWidth: 156, alignment: .leading)
                        .foregroundColor(Color.accentColor)
                        .multilineTextAlignment(.leading)
                        
                    
                    Image(systemName: "chevron.down")
                        .foregroundColor(Color.accentColor)
                    
                }.padding(.leading, 8)
                
                //Time
                HStack(alignment: .center){
                    
                    Image("time")
                    
                    Text("12 марта, 21:00")
                        .font(.system(size: 13, weight: .medium))
                        .frame(maxWidth: 156, alignment: .leading)
                        .foregroundColor(Color.textColor.opacity(0.5))
                    
                }.padding(.leading, 8)
                
                HStack(alignment: .center){
                    
                    Image("place")
                    
                    Text("Владимирский проспект")
                        .font(.system(size: 13, weight: .medium))
                        .frame(maxWidth: 156, alignment: .leading)
                        .lineLimit(1)
                        .foregroundColor(Color.textColor.opacity(0.5))
                    
                }.padding(.leading, 8)
            
          }
        }
        .padding(24)
        .background(Color.wrapperColor)
        .cornerRadius(32)
        .shadow(color: Color.textColor.opacity(0.07), radius: 8, x: 0.0, y: 10.0)
    }
}

