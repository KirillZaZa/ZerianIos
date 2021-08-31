//
//  UserSearchView.swift
//  Zerian
//
//  Created by Кирилл on 31.08.2021.
//

import SwiftUI

struct UserSearchView: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 16) {
                ForEach(0 ..< 10) { index in
                    CircleImageComponent()
                        .padding(.leading, index == 0 ? 30 : 0)
                        .padding(.trailing, index == 9 ? 30 : 0)
                }
            }
        }
    }
}

struct UserSearchView_Previews: PreviewProvider {
    static var previews: some View {
        UserSearchView()
    }
}
