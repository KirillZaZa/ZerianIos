//
//  UserSearchView.swift
//  Zerian
//
//  Created by Кирилл on 31.08.2021.
//

import SwiftUI

struct UserScrollView: View {
    
    let horizontalPadding: CGFloat
    
    let names = ["Даниил", "Таня", "Саша", "Вячеслав"]
    
    
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 8) {
                
                ForEach(0 ..< names.count) { index in
                    CircleImageComponent(name: names[index])
                        .padding(.leading, index == 0 ? horizontalPadding : 0)
                        .padding(.trailing, index == 9 ? horizontalPadding : 0)
                }
            }
        }
    }
}
