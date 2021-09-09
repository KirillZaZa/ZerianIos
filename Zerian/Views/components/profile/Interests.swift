//
//  Interests.swift
//  Zerian
//
//  Created by Кирилл on 09.09.2021.
//

import SwiftUI




struct Interests_Previews: PreviewProvider {
    static var previews: some View {
        Profile()
    }
}

struct Interests: View {
    
    let interests: [String] = [
        "кино",
        "ночная жизнь",
        "музеи",
        "активный отдых",
        "скейтинг"
    ]
   
    
    var body: some View {
        VStack(alignment: .leading){
            //Header
            Text("Интересы:")
                .font(.system(size: 18, weight: .bold))
                .foregroundColor(Color.textColor.opacity(0.7))
                .padding(.bottom, 12)
                
            
            //Interests
            TagCloudView(tags: interests)
        }
    }
}


struct TagCloudView: View {
    var tags: [String]
    let colors: [Color] =
    [
        Color.yellowColor,
        Color.blueColor,
        Color.orangeColor,
        Color.greenColor,
        Color.pinkColor
    ]

    @State private var totalHeight
          = CGFloat.zero

    var body: some View {
        VStack {
            GeometryReader { geometry in
                self.generateContent(in: geometry)
            }
        }
        .frame(height: totalHeight)
    }
  
    private func generateContent(in g: GeometryProxy) -> some View {
        var width = CGFloat.zero
        var height = CGFloat.zero

        return ZStack(alignment: .topLeading) {
            ForEach(self.tags, id: \.self) { tag in
                self.item(for: tag, color: colors.randomElement()!)
                    .padding([.horizontal, .vertical], 4)
                    .alignmentGuide(.leading, computeValue: { d in
                        if (abs(width - d.width) > g.size.width)
                        {
                            width = 0
                            height -= d.height
                        }
                        let result = width
                        if tag == self.tags.last! {
                            width = 0 //last item
                        } else {
                            width -= d.width
                        }
                        return result
                    })
                    .alignmentGuide(.top, computeValue: {d in
                        let result = height
                        if tag == self.tags.last! {
                            height = 0 // last item
                        }
                        return result
                    })
            }
        }.background(viewHeightReader($totalHeight))
    }

    private func item(for text: String, color: Color) -> some View {
        
        Text(text)
            .padding(.vertical, 8)
            .padding(.horizontal, 20)
            .font(.system(size: 16, weight: .semibold))
            .background(color)
            .foregroundColor(Color.white)
            .cornerRadius(20)
    }

    private func viewHeightReader(_ binding: Binding<CGFloat>) -> some View {
        return GeometryReader { geometry -> Color in
            let rect = geometry.frame(in: .local)
            DispatchQueue.main.async {
                binding.wrappedValue = rect.size.height
            }
            return .clear
        }
    }
}



