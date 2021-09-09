//
//  Menu.swift
//  Zerian
//
//  Created by Кирилл on 09.09.2021.
//

import SwiftUI


struct Menu: View {
    
    let menuNames = ["Избранное","Друзья","События"]
    
    var body: some View {
        HStack(alignment: .center, spacing: 64){
            MenuItem(name: menuNames[0], imgName: "heart")
            MenuItem(name: menuNames[1],
                     imgName: "people")
            MenuItem(name: menuNames[2], imgName: "star")
        }
    }
}

struct MenuItem: View {
    var name: String
    var imgName: String
    
    var body: some View{
        VStack{
            ZStack(alignment: .topTrailing){
                //Circle Image
                Image(imgName)
                    .frame(maxWidth: 32, maxHeight: 32)
                    .padding(12)
                    .background(Color.white)
                    .clipShape(Circle())
                
                //Badge
                Text("33")
                    .font(.system(size: 11, weight: .semibold))
                    .padding(4)
                    .background(Color.pinkColor)
                    .foregroundColor(Color.white)
                    .clipShape(Circle())
                    .offset(x: 4, y: -8.0)
            }
            Text(name)
                .font(.system(size: 14, weight: .bold))
                .foregroundColor(.titleColor)
            
        }
    }
}



struct Menu_Previews: PreviewProvider {
    static var previews: some View {
        Menu()
    }
}

