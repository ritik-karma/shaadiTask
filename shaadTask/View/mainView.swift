//
//  mainView.swift
//  shaadTask
//
//  Created by Ritik Karma on 23/06/24.
//

import SwiftUI

struct mainView: View {
    var body: some View {
        NavigationStack{
            GeometryReader{ geometry in
                
                VStack {
                    VStack{
                        TabView{
                            ForEach(0...3, id: \.self) { _ in
                                Color(.gray)
                                
                            }
                        }
                        
                        .frame(width: geometry.size.width, height: geometry.size.height / 2)
                        .tabViewStyle(.page)
                        
                    }
                    
                    
                    
                    VStack {
                        
                        VStack{
                            HStack{
                                Text("Find you")
                                Text("first")
                                    .foregroundStyle(.red)
                            }
                            .font(.largeTitle)
                            .fontWeight(.semibold)
                            HStack{
                                Text("Meta")
                                    .foregroundStyle(.red)
                                Text("Matches")
                            }
                            .font(.largeTitle)
                            .fontWeight(.semibold)
                            Text("join us and socialize with millions of meta humans")
                                .font(.subheadline)
                                .multilineTextAlignment(.center)
                                .padding(.horizontal)
                                .padding(.vertical, 5)
                            
                            VStack(spacing: 25){
                                HStack(spacing: 10){
                                    Button{
                                        //action for started button
                                    } label: {
                                        Text("Get Started \(Image(systemName: "arrow.up.right")) ")
                                            .font(.headline)
                                            .frame(width: 210, height: 60)
                                            .background(.red)
                                            .foregroundColor(.white)
                                            .clipShape(RoundedRectangle(cornerRadius: 20))
                                            .cornerRadius(20)
                                    }
                                    Button{
                                        
                                    } label: {
                                        Image("google")
                                            .resizable()
                                            .scaledToFit()
                                            .frame(width: 20, height: 20)
                                            .padding()
                                            .background(Color.gray.opacity(0.1))
                                            .cornerRadius(15)
                                    }
                                    
                                    
                                    Button{
                                        
                                    } label: {
                                        Image("apple")
                                            .resizable()
                                            .scaledToFit()
                                            .frame(width: 20, height: 20)
                                            .padding()
                                            .background(Color.gray.opacity(0.1))
                                            .cornerRadius(15)
                                    }
                                    
                                    }
                               
                                HStack {
                                    Text("Already have an account? ")
                                        .font(.subheadline)
                                        .foregroundColor(Color(red: 0, green: 0, blue: 0).opacity(0.50))
                                    NavigationLink {
                                        loginView()
                                    } label: {
                                        Text("Log In")
                                            .font(.subheadline)
                                            .foregroundColor(Color(red: 0.94, green: 0.29, blue: 0.29))
                                    }
                                 
                                }
                            }
                            .padding(.top, 40)
                        }
                        
                        
                    }
                    .padding()
                    .frame(width: geometry.size.width, height: geometry.size.height / 2)
                    
                }
            }
        }
        
        
        
    }
}

#Preview {
    mainView()
}
