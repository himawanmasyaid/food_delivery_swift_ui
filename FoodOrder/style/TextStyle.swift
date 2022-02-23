//
//  TextStyle.swift
//  FoodOrder
//
//  Created by Himawan on 23/2/22.
//

import SwiftUI

struct TextStyle: View {
    var body: some View {
        
        
        VStack(alignment: .leading, spacing: 8, content: {
            
            TextHeader1(title : "Hello, World!")
            
            TextSubtitle1(title : "Hello, World!")

            TextBody1(title : "Hello, World!")

            
        })
        
        
    }
}


struct TextHeader1: View {
    
    var title : String
    
    var body: some View {
        
        Text(title)
            .fontWeight(.heavy)
            .font(.system(size: 31))
        
    }
}

struct TextHeader2: View {
    
    var title : String
    
    var body: some View {
        
        Text(title)
            .fontWeight(.heavy)
            .font(.system(size: 28))
        
    }
}


struct TextSubtitle1: View {
    
    var title : String
    
    var body: some View {
        
        Text(title)
            .fontWeight(.bold)
            .font(.system(size: 24))
            .foregroundColor(.black)
    }
}

struct TextSubtitle2: View {
    
    var title : String
    
    var body: some View {
        
        Text(title)
            .fontWeight(.bold)
            .font(.system(size: 20))
    }
}

struct TextBody1: View {
    
    var title : String
    
    var body: some View {
        
        Text(title)
            .fontWeight(.regular)
            .font(.system(size: 16))
    }
}


//struct TextStyle_Previews: PreviewProvider {
//    static var previews: some View {
//        TextStyle()
//    }
//}
