//
//  TextFieldStyle.swift
//  FoodOrder
//
//  Created by Himawan on 23/2/22.
//

import SwiftUI

struct TextFieldStyle: View {
    
    var hint: String = "Username"
    @State private var data: String = ""
    
    
    var body: some View {

        ZStack(alignment: /*@START_MENU_TOKEN@*/Alignment(horizontal: .center, vertical: .center)/*@END_MENU_TOKEN@*/, content: {
            TextField(hint, text: $data)
        })
        .font(.system(size: 18))
        .frame(minWidth: 0, maxWidth: .infinity)
        .padding([.leading, .trailing], 28)
        .padding([.top, .bottom], 22)
        .background(Color.white)
        .cornerRadius(15)
        .shadow(radius: 2)
        
    }
}

struct TextFieldStyle_Previews: PreviewProvider {
    static var previews: some View {
        TextFieldStyle()
    }
}
