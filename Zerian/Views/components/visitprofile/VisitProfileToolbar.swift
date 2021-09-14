//
//  AnotherProfileToolbar.swift
//  Zerian
//
//  Created by Кирилл on 14.09.2021.
//

import SwiftUI



struct VisitProfileToolbar_Previews: PreviewProvider {
    static var previews: some View {
        VisitProfile()
    }
}

struct VisitProfileToolbar: View {
    var body: some View {
        HStack(alignment: .top, spacing: 0){
            
            Image(systemName: "chevron.left")
                .resizable()
                .scaledToFit()
                .frame(width: 24, height: 24)
                .foregroundColor(.white)
                .padding(.leading, 16)
            
            ToolbarInfo()
            
            Image("menu")
                .resizable()
                .scaledToFit()
                .frame(width: 24, height: 24)
                .padding(.trailing, 16)
        }
    }
}


struct ToolbarInfo: View{
    
    // Передать имя в структуру
    @State var name: String = "Алена Шишкова"
    @State var isOnline: Bool = true
    @State var lastSeen: String? = ""
    
    
    
    var body: some View{
        VStack(alignment: .center){
            HStack(alignment: .center){
                Text("\(self.name)")
                    .font(.system(size: 18, weight: .bold))
                    .foregroundColor(Color.white)
                Image("confirmed_page")
            }
            
            HStack(alignment: .center){
                Circle()
                    .frame(width: 14, height: 14)
                    .foregroundColor(Color.greenColor)
                
                Text("в сети")
                    .font(.system(size: 14, weight: .medium))
                    .foregroundColor(Color.white)
            }
            
        }.frame(maxWidth: .infinity)
  }
}
