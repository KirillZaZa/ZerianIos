//
//  EditButton.swift
//  Zerian
//
//  Created by Кирилл on 09.09.2021.
//

import SwiftUI

struct EditingButton: View {
    var body: some View {
        Image("pencil")
            .padding(8)
            .background(Color.white)
            .aspectRatio(contentMode: .fit)
            .clipShape(Circle())
    }
}

struct EditingButton_Previews: PreviewProvider {
    static var previews: some View {
        EditButton()
    }
}
