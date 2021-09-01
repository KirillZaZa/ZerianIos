//
//  CurrentEventText.swift
//  Zerian
//
//  Created by Кирилл on 31.08.2021.
//

import SwiftUI

struct CurrentEventTextComponent: View{
    
    var textEvent: String = "Крейзи бобры"
    
    var body: some View{
        Text("Мероприятие: \(self.textEvent)")
            .font(.system(size: 16, weight: .medium))
            .foregroundColor(.white)
    }
}


struct CurrentEventText_Previews: PreviewProvider {
    static var previews: some View {
        CurrentEventTextComponent()
    }
}
