//
//  About.swift
//  Zerian
//
//  Created by Кирилл on 09.09.2021.
//

import SwiftUI

struct About: View {
    
    let aboutText = """
    Примите участие в уроке по йоге!
    Встречаемся возле вечного огня.
    Прихватите хорошее настроение
    
    """
    
    var body: some View {
        VStack(alignment: .leading){
            Text("О себе:")
                .font(.system(size: 18, weight: .bold))
                .foregroundColor(Color.textColor.opacity(0.7))
                .frame(maxWidth: .infinity, alignment: .leading)
            
            Text(aboutText)
                .font(.system(size: 16, weight: .regular))
                .foregroundColor(.titleColor)
                .padding(.top, 12)
                .padding(.trailing, 32)
                
                
        }
    }
}

struct About_Previews: PreviewProvider {
    static var previews: some View {
        Profile()
    }
}
