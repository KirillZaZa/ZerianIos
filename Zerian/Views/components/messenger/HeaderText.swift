//
//  HeaderText.swift
//  Zerian
//
//  Created by Кирилл on 31.08.2021.
//

import SwiftUI

struct HeaderText: View {
    var body: some View{
        Text("Общение")
            .foregroundColor(.white)
            .font(.system(size: 28, weight: .bold))
    }
}


struct HeaderText_Previews: PreviewProvider {
    static var previews: some View {
        HeaderText()
    }
}
