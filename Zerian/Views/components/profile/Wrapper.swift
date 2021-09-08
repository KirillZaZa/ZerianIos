//
//  Wrapper.swift
//  Zerian
//
//  Created by Кирилл on 08.09.2021.
//

import SwiftUI

struct Wrapper: View {
    var body: some View {
        VStack(alignment: .leading){
            ScrollView(.vertical, showsIndicators: false){
                VStack(alignment: .center){
                    HStack(alignment: .center){
                        TextHeader()
                        EditingButton()
                            .padding(.leading, 8)
                    }.padding(.top, 24)
                    
                    Subtitle()
                        .padding(.top, 4)
                    
                    AddPhotoButton()
                        .shadow(color: Color.black.opacity(0.1), radius: 10, x: 0.0, y: 2)
                        .padding(.top, 24)
                }
            }.frame(maxWidth: .infinity, maxHeight: .infinity)
        }
        .frame(maxWidth: .infinity)
        .background(Color.wrapperColor)
        .cornerRadius(24, corners: [.topLeft])
        .edgesIgnoringSafeArea(.bottom)
    }
}

private struct TextHeader: View{
    var body: some View{
        Text("Кристина Репина")
            .font(.system(size: 24, weight: .bold))
            .foregroundColor(Color.titleColor)
    }
}

private struct Subtitle: View{
    var body: some View{
        Text("Санкт-Петербург, 27 лет")
            .font(.system(size: 16, weight: .regular))
            .foregroundColor(Color.textColor.opacity(0.5))
            
    }
}


struct Wrapper_Previews: PreviewProvider {
    static var previews: some View {
        Profile()
    }
}

