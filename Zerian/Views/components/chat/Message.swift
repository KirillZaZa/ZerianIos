//
//  Message.swift
//  Zerian
//
//  Created by Кирилл on 12.09.2021.
//

import SwiftUI

struct Message: View {
    
    @State var message = """
    Че тебе надо? Я вроде ясно
    дал понять, что меж нами
    все кончено.
    """
    
    @State var time = "11:56"
    
    var isFromMe = true
    
    private var messageAlignment: Alignment
    
    init(){
        self.messageAlignment = self.isFromMe ? Alignment.trailing : Alignment.leading
    }
    
   
    
    var body: some View {
        
        VStack(alignment: .trailing){
            Text("\(self.message)")
                .foregroundColor(Color.titleColor)
                .font(.system(size: 16, weight: .medium))
                .padding(.vertical, 16)
                .padding(.horizontal, 16)
                .frame(maxWidth: 256)
                .background(Color.white)
                .cornerRadius(24)
                .multilineTextAlignment(.leading)
            
            Text("\(time)")
                .font(.system(size: 14, weight: .regular))
                .foregroundColor(Color.black.opacity(0.5))
        }
        .frame(maxWidth: .infinity, alignment: messageAlignment)
    }
}

/**
 
    Использовать данную view, если сообщение пришло не от нас
    и отобразить аватарку пользователя HStack
 
 */


struct Message_Previews: PreviewProvider {
    static var previews: some View {
        Message()
    }
}
