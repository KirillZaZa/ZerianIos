//
//  AnotherMenu.swift
//  Zerian
//
//  Created by Кирилл on 14.09.2021.
//

import SwiftUI

import SwiftUI


struct VisitMenu: View {
    
    let menuNames = ["Чат","Друзья","События"]
    
    var body: some View {
        HStack(alignment: .center, spacing: 20){
            VisitItem(name: menuNames[0], imgName: "heart")
            VisitItem(name: menuNames[1],
                     imgName: "people")
            VisitItem(name: menuNames[2], imgName: "star")
        }
        .padding(.vertical, 24)
        .background(Color.white)
        .cornerRadius(32)
        .padding(.top, 32)
        .frame(maxWidth: .infinity)
        .shadow(color: Color.black.opacity(0.1), radius: 15, x: 0.0, y: 10.0)
        
        
    }
}

struct VisitItem: View {
    var name: String
    var imgName: String
    
    var body: some View{
        VStack{
            ZStack(alignment: .topTrailing){
                //Circle Image
                Image(imgName)
                    .frame(maxWidth: 24, maxHeight: 24)
                    .padding(12)
                    .background(Color.wrapperColor)
                    .clipShape(Circle())
                
                //Badge
                Text("33")
                    .font(.system(size: 11, weight: .semibold))
                    .padding(4)
                    .background(Color.pinkColor)
                    .foregroundColor(Color.wrapperColor)
                    .clipShape(Circle())
                    .offset(x: 4, y: -8.0)
            }
            Text(name)
                .font(.system(size: 14, weight: .bold))
                .foregroundColor(Color.accentColor)
                .frame(width: 100)
            
        }
    }
}


struct VisitMenu_Previews: PreviewProvider {
    static var previews: some View {
        VisitProfileWrapper()
    }
}
