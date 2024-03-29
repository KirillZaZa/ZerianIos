//
//  SearchView.swift
//  Zerian
//
//  Created by Кирилл on 31.08.2021.
//

import SwiftUI

struct SearchBar: View {
    @State var text: String = ""

    var body: some View{
        HStack(spacing: 16) {
            Image(systemName: "magnifyingglass")
            TextField("Поиск", text: self.$text)
        }
        .padding(8)
        .background(Color.white)
        .cornerRadius(32)
    }
}

struct SearchComponent_Previews: PreviewProvider {
    static var previews: some View {
        SearchBar()
    }
}
