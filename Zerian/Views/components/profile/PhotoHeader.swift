//
//  HeaderImage.swift
//  Zerian
//
//  Created by Кирилл on 08.09.2021.
//

import SwiftUI

struct PhotoHeader: View {
    

    
    var body: some View {
        ZStack(alignment: .topTrailing){                            Image("test_photo")
                .resizable()
                .scaledToFill()
                .frame(maxWidth: .infinity, maxHeight: 220)
                .clipped()
                .offset(y: 24.0)
            

            Settings()
            
            
        }
    }
}

struct Settings: View{

    var body: some View{
            
            Image("settings")
                .padding(8)
                .background(Color.white)
                .aspectRatio(contentMode: .fit)
                .clipShape(Circle())
                .padding(.top, 16)
                .padding(.trailing, 16)
        
        
    }
}



struct PhotoHeader_Previews: PreviewProvider {
    static var previews: some View {
        Profile()
    }
}
