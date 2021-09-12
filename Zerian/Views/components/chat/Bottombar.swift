//
//  Bottombar.swift
//  Zerian
//
//  Created by Кирилл on 12.09.2021.
//

import SwiftUI

struct Bottombar: View {
    @State var text: String = ""

    var body: some View {
        HStack {
            TextField("Введите сообщение...", text: self.$text)
                .padding(12)

                .background(Color.textColor.opacity(0.1))
                .cornerRadius(24)
        }
        .padding(8)
        .background(Color.white)
        .cornerRadius(24, corners: [.topLeft, .topRight])
    }
}

struct Bottombar_Previews: PreviewProvider {
    static var previews: some View {
        Bottombar()
    }
}
