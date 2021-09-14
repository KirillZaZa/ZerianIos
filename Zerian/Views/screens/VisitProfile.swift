//
//  AnothersProfile.swift
//  Zerian
//
//  Created by Кирилл on 14.09.2021.
//

import SwiftUI

struct VisitProfile: View {
    var body: some View {
        VStack{
            VisitProfileToolbar()
                .padding(.top, 24)
            
            UserInfo()
                .padding(.vertical, 16)
                .padding(.leading, 16)
            
            VisitProfileWrapper()
            
        
            
                
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity,
               alignment: .top)
        .background(Color.accentColor)
    }
}

struct VisitProfile_Previews: PreviewProvider {
    static var previews: some View {
        VisitProfile()
    }
}
