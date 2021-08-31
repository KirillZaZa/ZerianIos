//
//  BackgroundHelper.swift
//  Zerian
//
//  Created by Кирилл on 31.08.2021.
//

import SwiftUI

struct BackgroundHelper: View {
    
    
    var body: some View {
        VStack{
            
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
        .background(Color.accentColor.edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/))
        
    }
}

struct BackgroundHelper_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundHelper()
    }
}
