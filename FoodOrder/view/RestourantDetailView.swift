//
//  RestourantDetailView.swift
//  FoodOrder
//
//  Created by Himawan on 23/2/22.
//

import SwiftUI

struct RestourantDetailView: View {
    var body: some View {
        
        ScrollView(showsIndicators: false)  {

            VStack(alignment: .leading, spacing: 0) {
                
                Image("img_resto")
                    .resizable()
                    .scaledToFill()
                    .frame(
                        maxWidth: .infinity,
                        maxHeight: 400
                    )
                    .clipped()

                
                VStack(alignment: .leading, spacing: 8, content: {
                    
                    TextHeader1(title: "Warmindo Resto")
                        .padding(.top, 20)
                    
                    HStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: 20, content: {
                        
                        IconInformationView(
                            icon:  "ic_map_pin", description: "14 km"
                        )
                        
                        IconInformationView(
                            icon:  "ic_star", description: "4.8 Rating"
                        )
                        
                    })
                    
                    
                    TextBody1(title: "Most whole Alaskan Red King Crabs get broken down into legs, claws, and lump meat. We offer all of these options as well in our online shop, but there is nothing like getting the whole . . . .")
                    
                    TextSubtitle1(title: "Best Sellers")
                        .padding(.top, 16)
                    
                    ProductListGrid()
                    
                    
                }).padding(16)
                

            }
            
        }
        .frame(
            minWidth: 0,
            maxWidth: .infinity,
            minHeight: 0,
            maxHeight: .infinity,
            alignment: .topLeading
        ).ignoresSafeArea()
        
    }
}

private struct ProductListGrid: View {
    
    private var gridItemLayout = Array(repeating: GridItem(.flexible(), spacing: 10), count: 2)
    
    var body: some View {
        
        
        VStack {
            
            LazyVGrid(columns: gridItemLayout, content: {
                
                ForEach(0..<4) { i in

                    ProductCardView()

                }
                
            })
            
        }
        .frame(maxWidth: .infinity)
        .padding(.top, 16)
        
    }
    
}

private struct ProductCardView: View {

    var body: some View {
        
        VStack(content: {

            Image("ic_logo")
                .frame(minWidth: 0, maxWidth: .infinity)
                .frame(maxHeight: 130)
                .padding(.bottom, 28)
            
            TextSubtitle2(title: "Spacy fresh crab")
                .padding([.leading, .trailing], 8)
                .lineLimit(2)
                .frame(minWidth: 0, maxWidth: .infinity)

            
            TextSubtitle2(title: "Rp 20000")
                .padding(.bottom, 16)
                .padding([.leading, .trailing], 8)
                .foregroundColor(text_primary_color)
                

        })
        .frame(minWidth: 0, maxWidth: .infinity)
        .background(Color.white)
        .cornerRadius(25)
        .padding(.bottom, 8)
        .shadow(radius: 2)
        
    }
    
}

struct IconInformationView: View {
    
    var icon : String
    var description : String
    
    var body: some View {
            
        HStack(spacing: 13, content: {
            
            Image(icon)
                .frame(width: 24, height: 24, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            
            TextBody1(title: description)
                .foregroundColor(text_black_3)
            
        })
        .padding([.top, .bottom], 16)
    }
    
}

struct SubHeadlineRestoView: View {
    
    let title: String
    
    var body: some View {
        
        Text(title)
            .fontWeight(.bold)
            .font(.system(size: 20))
            .padding([.top, .leading], 16)

    }
    
}

struct RestourantDetailView_Previews: PreviewProvider {
    static var previews: some View {
        RestourantDetailView()
    }
}
