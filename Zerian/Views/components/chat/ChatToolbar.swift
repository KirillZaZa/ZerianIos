//
//  Toolbar.swift
//  Zerian
//
//  Created by Кирилл on 12.09.2021.
//

import SwiftUI

struct Toolbar: View {
    
    @State var userName = "Алена Шишкова"
    
    var body: some View {
        HStack(alignment: .top, spacing: 0){
            Image(systemName: "chevron.left")
                .resizable()
                .scaledToFit()
                .frame(width: 24, height: 24)
                .foregroundColor(.white)
                .padding(.leading, 16)
            
            
            Text("\(self.userName)")
                .font(.system(size: 20, weight: .semibold))
                .foregroundColor(Color.white)
                .frame(maxWidth: .infinity)
                .multilineTextAlignment(.center)
            
            Image("menu")
                .resizable()
                .scaledToFit()
                .frame(width: 24, height: 24)
                .padding(.trailing, 16)
                
        }
        .frame(maxWidth: .infinity)
    }
}

struct Toolbar_Previews: PreviewProvider {
    static var previews: some View {
        Chat()
    }
}
