//
//  AnotherProfileWrapper.swift
//  Zerian
//
//  Created by Кирилл on 14.09.2021.
//

import SwiftUI

struct VisitProfileWrapper: View {
    
    @State var isFriend: Bool = false
    
    var body: some View {
        VStack(){
            ScrollView(.vertical, showsIndicators: false){
                
                VisitMenu()
                    .padding(.horizontal, 12)
                
                //Interacting with user
                if isFriend{
                    
                    HStack(alignment: .center){
                        
                        InviteButton()
                            .padding(.leading, 24)
                        
                        ManageFriendButton()
                            .padding(.trailing, 24)
                        
                    }.padding(.top, 24)
                    
                }else{
                    
                    AddFriendButton()
                        .padding(.top, 24)
                    
                }
                
                //CurrentEvents
                Text("Текущие события")
                    .font(.system(size: 18, weight: .bold))
                    .foregroundColor(Color.textColor.opacity(0.5))
                    .padding(.top, 24)
                
                CurrentEventsFriend()
                    .padding(.horizontal, 12)
                    .padding(.top, 24)
               
                    

            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .padding(.top, 24)
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
