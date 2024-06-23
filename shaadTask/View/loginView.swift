//
//  loginView.swift
//  shaadiTask
//
//  Created by Ritik Karma on 23/06/24.
//

import SwiftUI

struct loginView: View {
    @State private var userNum = ""
    var body: some View {
        
        VStack{
            VStack(alignment: .leading, spacing: 20){
                Text("Wellcome Back 👻")
                    .font(.title2)
                    .fontWeight(.semibold)
                
                
                Text("Login to your Account")
                   
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(.leading, 35)
            
            HStack {
                Text("+91")
                    .foregroundStyle(.gray)
                    .font(.headline)
                    .padding(.leading, 10)
                
                TextField("Enter Phone Number", text: $userNum)
                    .keyboardType(.numberPad)
                    .padding()
                    .font(.headline)
                    .background(Color(.systemGroupedBackground))
                    .cornerRadius(8)
                    .padding(.horizontal)
                    .multilineTextAlignment(.leading)
            }
            .frame(width: 328, height: 50) 
            .background(Color(.systemGroupedBackground))
            .cornerRadius(8)
            .padding(.vertical, 50)
            
            
            Button{
                // Action for send pass
            } label: {
                Text("Send One Time Password")
                    .font(.headline)
                    .frame(width: 328, height: 55)
                    .background(.red)
                    .foregroundColor(.white)
                    .clipShape(RoundedRectangle(cornerRadius: 20))
                    .cornerRadius(20)
            }
            Button{
                //
            } label: {
                Text("Login Using Password")
                    .font(.headline)
                    .frame(width: 328, height: 55)
                    .background(Color(.systemGray2))
                    .foregroundStyle(.white)
                    .clipShape(RoundedRectangle(cornerRadius: 20))
                    .cornerRadius(20)
            }
        }
        .padding(.top, 80)
        Spacer()
            
        
    }
}


#Preview {
    loginView()
}
