//
//  Profile.swift
//  Zerian
//
//  Created by Кирилл on 08.09.2021.
//

import SwiftUI

struct Profile: View {
    
    private let Ypadding: CGFloat = 32
    
    var body: some View {
        VStack(alignment: .leading){
                PhotoHeader()
                ProfileWrapper()
                    .offset(y: -Ypadding)
        }
        .frame(maxWidth: .infinity , maxHeight: .infinity, alignment: .top)
        .edgesIgnoringSafeArea(.bottom)
    }
}

struct Profile_Previews: PreviewProvider {
    static var previews: some View {
        Profile()
    }
}
