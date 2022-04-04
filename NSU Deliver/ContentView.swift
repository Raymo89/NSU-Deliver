//
//  ContentView.swift
//  NSU Deliver
//
//  Created by Beredo, Raymond on 3/2/22.
//


import SwiftUI

struct HomeView: View {
    var body: some View {
 
           
            ZStack {
    //Gray Cards
            Group {
        //Order Now Background Card
            Rectangle()
            .fill(Color(#colorLiteral(red: 0.7686274647712708, green: 0.7686274647712708, blue: 0.7686274647712708, alpha: 1)))
        .frame(width: 420, height: 95)
            .position(x: 200, y: 240)
            
                
        //navigation buttons
            /*    Button ("Click Me", action: {
                    
                })
                
                VStack {
                    Image(systemName: "gear")
                } */
                
                
                
                
            //Order Now Text
                    Text("Order Now").font(.custom("Prompt Regular", size: 25)).multilineTextAlignment(.center) .position(x:90, y: 240)
            
        //Reorder Background Card
                Rectangle()
                .fill(Color(#colorLiteral(red: 0.7686274647712708, green: 0.7686274647712708, blue: 0.7686274647712708, alpha: 1)))
            .frame(width: 420, height: 95)
                .position(x: 200, y: 340)
            
            //Reorder Text
                Text("Reorder").font(.custom("Prompt Regular", size: 25)).multilineTextAlignment(.leading) .position(x:75, y: 340)
            
            //Rewards Background Card
                Rectangle()
                .fill(Color(#colorLiteral(red: 0.7686274647712708, green: 0.7686274647712708, blue: 0.7686274647712708, alpha: 1)))
            .frame(width: 420, height: 95)
                .position(x: 200, y: 440)
            
            //Rewards Text
               Text("Rewards").font(.custom("Prompt Regular", size: 25)).multilineTextAlignment(.leading) .position(x:80, y: 440)
                
            }
                //NSU Banner Background
                    Rectangle()
                        .fill(Color(#colorLiteral(red: 0.237951397895813, green: 0.7416666746139526, blue: 0.4998833239078522, alpha: 1)))
                    .frame(width: 4200, height: 54)
                    .position(x: 190,y: 29)
            //NSU Image
            Image(uiImage: #imageLiteral(resourceName: "NSU_logo_horiz_4c"))
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 390, height: 130)
                .clipped()
            .frame(width: 390, height: 160)
            .position(x: 190, y: 125)
            
            //NSU DELIVER
          Text("  NSU DELIVER").font(.custom("Prompt Regular", size: 36)).foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1))) .position(x: 130, y: 30)
        
       //NSU Banner Image
        Image(uiImage: #imageLiteral(resourceName: "norfolk_state_spartans_logo_secondary_19991057"))
            .resizable()
            .aspectRatio(contentMode: .fill)
            .frame(width: 41, height: 41)
                .clipped()
        .frame(width: 41, height: 41)
        .position(x: 325, y: 30)
        
        
           
        }
        
        
    }
}
        
struct ContentView: View {
    var body: some View {
    //Bottom Navigation Tabs
            TabView {
                HomeView ()
                .tabItem {
                    Image(systemName: "house")
                    Text("Home")
                }
                
                Search_Screen(text: .constant(""))
                    .tabItem {
                        Image(systemName: "magnifyingglass")
                        Text("Search")
                    }
                Inbox()
                    .tabItem {
                        Image(systemName: "message")
                        Text("Inbox")
                    }
                Setting()
                    .tabItem {
                        Image(systemName: "gear")
                        Text("Settings")
                        
                    }
            }
            
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()

    }
}

