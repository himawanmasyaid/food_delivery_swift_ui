//
//  OnboardingView.swift
//  FoodOrder
//
//  Created by Himawan on 20/2/22.
//

import SwiftUI

struct OnboardingView: View {
    var body: some View {
        
        VStack {
            
            Spacer()
            
            VStack(alignment: .leading) {
                
                Image("ic_logo")
                .resizable()
                .frame(width: 175, height: 139, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .padding(.bottom, 20)
                
                
                Text("Food Order")
                    .font(.largeTitle)
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                            
                Text("Deliever Favorite Food")
                    .font(.body)
                    .fontWeight(.regular)
                    
                
            }
            
            Spacer()
            
            Button(action: {
                print("Mulai Sekarang")
            }, label: {
                    Text("Get Started")
                        .foregroundColor(.white)
                        .font(.headline)
                        .fontWeight(.bold)
                        .frame(maxWidth: .infinity)
                        .frame(height: 60, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        .background(Color("btn_primary"))
                        .cornerRadius(15)
                        .padding(16)
                
            })

        }
    

    }
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}
