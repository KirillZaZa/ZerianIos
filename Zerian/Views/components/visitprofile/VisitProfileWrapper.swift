//
//  AnotherProfileWrapper.swift
//  Zerian
//
//  Created by Кирилл on 14.09.2021.
//

import SwiftUI

struct VisitProfileWrapper: View {
    var body: some View {
        VStack(){
            ScrollView(.vertical, showsIndicators: false){
                VisitMenu()
                
                AddFriendButton()
                    .padding(.top, 24)
                    

            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.wrapperColor)
        .cornerRadius(48, corners: [.topLeft])
    }
}

struct VisitProfileWrapper_Previews: PreviewProvider {
    static var previews: some View {
        VisitProfile()
    }
}
