//
//  ContentView.swift
//  The Barter Shop
//
//  Created by admin on 4/26/21.
//

import SwiftUI

struct ContentView : View {
    
    @State var index = 0
    @Namespace var name
    
    var body: some View {
        
        VStack{
            
            Image("Bart 1")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 250, height: 250)
            
            
            Spacer()
            
            HStack(spacing: 0){
                Button(action: {
                    
                    withAnimation(.spring()){
                        index = 0
                    }
                    
                }){
                    VStack{
                        
                        Text("Login")
                            .font(.system(size: 20))
                            .fontWeight(.bold)
                            .foregroundColor(index == 0 ? .black : .gray)
                        
                        ZStack{
                            //slide animation....
                            Capsule()
                                .fill(Color.black.opacity(0.04))
                                .frame( height: 4)
                            
                            if index == 0{
                                
                                Capsule()
                                    .fill(Color("Color"))
                                    .frame( height: 4)
                                    .matchedGeometryEffect(id: "Tab", in: name)
                                
                            }
                        }
                    }
                }
                Button(action: {
                    
                    withAnimation(.spring()){
                        index = 1
                    }
                    
                }){
                    VStack{
                        
                        Text("Sign Up")
                            .font(.system(size: 20))
                            .fontWeight(.bold)
                            .foregroundColor(index == 1 ? .black : .gray)
                        
                        ZStack{
                            //slide animation....
                            Capsule()
                                .fill(Color.black.opacity(0.04))
                                .frame( height: 4)
                            
                            if index == 1{
                                
                                Capsule()
                                    .fill(Color("Color"))
                                    .frame( height: 4)
                                    .matchedGeometryEffect(id: "Tab", in: name)
                            }
                        }
                        
                        Capsule()
                            .fill(Color("Color"))
                            .frame( height: 4)
                    }
                }
            }
            .padding(.top,30)
            
            //Login View...
            
            // Changing Views Based On Index...
            if index == 0{
                Login()
            }
            
        }
    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
}


struct Login : View {
    
    @State var password = ""
    
    var body : some View{
        
        VStack{
            
            HStack{
                
                VStack(alignment: .leading, spacing: 12) {
                    Text("Welcome Back,")
                        .fontWeight(.bold)
                    
                    Text("Christian")
                        .font(.title)
                        .fontWeight(.bold)
                    
                    Button(action: {}) {
                        
                    }
                    Text("Incorrect Name")
                        .font(.system(size: 14))
                        .fontWeight(.bold)
                        .foregroundColor(Color("Color"))
                }
                
                Spacer(minLength: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/)
                
                Image("profile")
                    .resizable()
                    .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                    .frame(width:85, height: 85)
                
                
            }
            .padding(.horizontal, 25)
            .padding(.top,30)
            
            VStack(alignment: .leading, spacing: 15) {
                
                Text("Password")
                    .font(.caption)
                    .fontWeight(.bold)
                    .foregroundColor(.gray)
                
                TextField("password", text: $password)
                    .padding()
                    .background(Color.white)
                    .cornerRadius(5)
                    //shadow effect...
                    .shadow(color:Color.black.opacity(0.1), radius: 5, x: 0, y: 5)
                    .shadow(color:Color.black.opacity(0.1), radius: 5, x: 0, y: -5)
                
                Button(action: {}) {
                    
                    Text("Forget Password")
                        .font(.system(size: 14))
                        .fontWeight(.bold)
                        .foregroundColor(Color("Color"))
                    
                    Button(action: {}) {
                        
                    }
                    .padding(.top, 10)
                    
                }
                .padding(.horizontal,25)
                .padding(.top,25)
            }
            
        }
    }
}
