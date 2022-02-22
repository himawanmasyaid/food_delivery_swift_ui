//
//  HomeView.swift
//  FoodOrder
//
//  Created by Himawan on 21/2/22.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        
        ScrollView(showsIndicators: false)  {
            
            VStack(alignment: .leading, spacing: 0) {
  
                Text("Find Your \nFavorite Food")
                    .fontWeight(.heavy)
                    .font(.system(size: 31))
                    .padding([.leading, .trailing], 16)
                
                SearchFilterView()
                    .padding([.leading, .trailing, .top], 16)
                
                SubHeadlineContentView(title: "Nearest Restaurant")
                    .padding([.leading, .trailing, .bottom], 16)
                
                ScrollView (.horizontal, showsIndicators: false) {

                    HStack (spacing: 0) {

                        RestaurantCardView()

                        RestaurantCardView()

                        RestaurantCardView()
                        
                        RestaurantCardView()

                    }
                    
                }
                
                SubHeadlineContentView(title: "Popular Menu")
                    .padding([.leading, .trailing, .bottom], 16)
                
            
                MenuCardView(
                    menu: Menu(name: "Herbal Pancake")
                )

                MenuCardView(
                    menu: Menu(name: "Fruit Salad")
                )
                
                MenuCardView(
                    menu: Menu(name: "Green Noddle")
                )
                
                MenuCardView(
                    menu: Menu(name: "Rendang Padang")
                )
                
                
            }.frame(
                minWidth: 0,
                maxWidth: .infinity,
                minHeight: 0,
                maxHeight: .infinity,
                alignment: .topLeading
            )
            .padding(EdgeInsets(top: 20, leading: 0, bottom: 20, trailing: 0))
            
        }
        
    }
}

struct MenuCardView: View {
    
    let menu: Menu
    
    var body: some View {

        HStack(content: {
            
            Image("ic_logo")
                .resizable()
                .frame(maxHeight: 80)
                .frame(maxWidth: 80)
                .padding(8)
            
            VStack(alignment: .leading, content: {
                
                Text(menu.name
                )
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    .font(.system(size: 18))
                    .lineLimit(2)
                
                Text("Delivery in 20 minutes")

            })

            
            Spacer()


            
        })
        .frame(maxWidth: .infinity)
        .background(Color.white)
        .cornerRadius(22)
        .padding(10)
        .shadow(radius: 5)
        
    }
    
}

struct RestaurantCardView: View {
    
    var body: some View {
        
        VStack(content: {
            
            Image("ic_logo")
                .resizable()
                .frame(maxHeight: 130)
                .padding(.top, 10)

            
            Text("Warmindo Asik")
                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                .font(.system(size: 18))
                .lineLimit(2)
                .padding([.top, .leading, .trailing, .bottom], 8)
            
            
            Text("0.1 km")
                .font(.system(size: 12))
                .padding(.bottom, 10)

            
        })
        .frame(maxWidth: 150)
        .background(Color.white)
        .cornerRadius(25)
        .padding(8)
        .shadow(radius: 5)
        
    }
    
}

struct SearchFilterView: View {
    
    var body: some View {
        
        HStack(spacing: 16, content:  {
            
            HStack(alignment: .center) {
                
                Image(uiImage: #imageLiteral(resourceName: "ic_search"))
                    .resizable()
                    .frame(width: 22, height: 22, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                
                Spacer()
                
                Text("What do you want to order?")
                    .foregroundColor(Color(""))
                    .font(.subheadline)
                
                Spacer()

                
            }
            .frame(maxWidth: .infinity)
            .padding()
            .background(Color("bg_search_color"))
            .cornerRadius(20)
            .onTapGesture {
                
            }
            
            Image(uiImage: #imageLiteral(resourceName: "ic_filter"))
                .resizable()
                .frame(width: 22, height: 22)
                .padding()
                .background(Color("bg_search_color"))
                .cornerRadius(20)
                .onTapGesture {
                    
                }
            
        })
    }
    
}

struct SubHeadlineContentView: View {
    
    let title: String
    
    var body: some View {
        
        HStack( content: {
            
            Text(title)
                .fontWeight(.bold)
                .font(.system(size: 24))
            
            Spacer()
            
            Text("View More")
                .foregroundColor(Color("text_color_secondary"))
                .font(.system(size: 14))
                .frame(alignment: .center)
                .onTapGesture {
                    
                }
            
            
        }).padding(.top, 16)

        
    }
    
}


struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
