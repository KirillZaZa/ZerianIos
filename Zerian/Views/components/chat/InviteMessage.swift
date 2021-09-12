//
//  InviteMessage.swift
//  Zerian
//
//  Created by Кирилл on 12.09.2021.
//

import SwiftUI



struct InviteMessage_Previews: PreviewProvider {
    static var previews: some View {
        InviteMessage()
    }
}

struct InviteMessage: View {
    
    @State var time = "11:56"
    @State var nameOfEvent: String?
    @State var membersCount: Int?
    var isFromMe = true

    
    private let invite = """
    Привет! Присоединяйся к
    нашей тусовке "Крейзи
    бобры"
    """
    private let membersNotify = "и еще 15 участников!"
    
    private var messageAlignment: Alignment
    
    init(){
        self.messageAlignment = self.isFromMe ? Alignment.leading : Alignment.trailing
    }
    
    
    var body: some View {
        VStack(alignment: messageAlignment.horizontal){
            VStack(alignment: .leading, spacing: 4){
                
                // Invite message
                Text("\(self.invite)")
                    .font(.system(size: 16, weight: .medium))
                    .foregroundColor(Color.white)
                    .multilineTextAlignment(.leading)
                    .padding(.vertical, 12)
                    .padding(.horizontal, 16)
                    .frame(maxWidth: 256, alignment: .leading)
                
                //Users who goes
                HStack(alignment: .center, spacing: -10){
                    ImageMessage()
                    ImageMessage()
                    ImageMessage()
                    
                    Text(membersNotify)
                        .font(.system(size: 14, weight: .medium))
                        .foregroundColor(Color.white)
                        .padding(.leading, 20)
                }
                .padding(.horizontal, 12)
                .padding(.vertical, 4)
                
                //Decline and accept buttons
                HStack(alignment: .center){
                    
                    AcceptButton()
                        .padding(.horizontal, 12)
                        .padding(.bottom, 8)
                    
                    //Decline button
                    Text("Отклонить")
                        .font(.system(size: 16, weight: .bold))
                        .foregroundColor(Color.white)
                        .padding(.vertical, 12)
                        .padding(.horizontal, 8)
                        .padding(.bottom, 8)
                }
            }
            .background(Color.accentColor)
            .cornerRadius(24.0)
            
            Text("\(time)")
                .font(.system(size: 14, weight: .regular))
                .foregroundColor(Color.black.opacity(0.5))
                
            
            
        }
        .frame(maxWidth: .infinity, alignment: messageAlignment)
        
        
    
    }
}

struct StyleAcceptButton: ButtonStyle{
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
        .frame(maxHeight: 12, alignment: .leading)
        .padding(.vertical, 12)
        .padding(.horizontal, 16)
        .background(Color.greenColor)
        .foregroundColor(Color.white)
        .font(.system(size: 16, weight: .bold))
        .cornerRadius(16)
        .scaleEffect(configuration.isPressed ? 1.2 : 1)
        .animation(.easeOut(duration: 0.2), value: configuration.isPressed)
    }
}

struct AcceptButton: View{
    var body: some View{
        Button("Принять"){
            
        }.buttonStyle(StyleAcceptButton())
    }
}

struct ImageMessage: View{
    var body: some View{
        Image("test_photo")
            .resizable()
            .aspectRatio(contentMode: .fill)
            .frame(maxWidth: 32, maxHeight: 32)
            .clipShape(Circle())
    }
}

