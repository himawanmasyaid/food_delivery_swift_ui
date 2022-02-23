//
//  LoginView.swift
//  FoodOrder
//
//  Created by Himawan on 23/2/22.
//

import SwiftUI

struct LoginView: View {
    
    @State var username = ""
    @State var password = ""


    var body: some View {

        VStack(spacing: 0, content: {

            Image("ic_logo")
                .resizable()
                .frame(width: 150, height: 150, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .padding(.top, 50)
            
            TextHeader1(title: "Food Order")
                .foregroundColor(text_primary_color)
                .padding(.top, 16)
            
            TextBody1(title: "Deliever Favorite Food")
            
            TextSubtitle1(title: "Login to Your Account")
                .padding([.top, .bottom], 60)
            
            
            ZStack(content: {
                TextField("Username", text: $username)
                    .font(.system(size: 18))
                
            }).frame(minWidth: 0, maxWidth: .infinity)
            .padding([.leading, .trailing], 28)
            .padding([.top, .bottom], 22)
            .background(Color.white)
            .cornerRadius(15)
            .shadow(radius: 2)
            .padding([.leading, .trailing], 16)
            
            ZStack(content: {
                TextField("Password", text: $password)
                    .font(.system(size: 18))
                
            }).frame(minWidth: 0, maxWidth: .infinity)
            .padding([.leading, .trailing], 28)
            .padding([.top, .bottom], 22)
            .background(Color.white)
            .cornerRadius(15)
            .shadow(radius: 2)
            .padding([.leading, .trailing, .top], 16)

            
            Spacer()
                        
            Button(action: {
                print("Login")
            }, label: {
                    Text("Login")
                        .foregroundColor(.white)
                        .font(.headline)
                        .fontWeight(.bold)
                        .frame(maxWidth: .infinity)
                        .frame(height: 60, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        .background(Color("btn_primary"))
                        .cornerRadius(15)
                        .padding(16)
                
            })
            
        })
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.white)

    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
