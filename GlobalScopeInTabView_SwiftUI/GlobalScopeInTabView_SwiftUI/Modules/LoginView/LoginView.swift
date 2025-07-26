//
//  LoginView.swift
//  GlobalScopeInTabView_SwiftUI
//
//  Created by Mantosh Kumar on 26/07/25.
//

import SwiftUI

struct LoginView: View {
    
    @AppStorage("isLoggedIn") private var isLoggedIn: Bool = false
    
    @State private var userName: String = ""
    @State private var password: String = ""
    
    var body: some View {
        
        VStack(spacing: 20) {
            Text("Login")
                .font(.largeTitle)
                .bold()
            
            TextField("UserName", text: $userName)
                .padding()
                .background(Color(.systemGray6))
                .presentationCornerRadius(8)
            
            TextField("Password", text: $password)
                .padding()
                .background(Color(.systemGray6))
                .presentationCornerRadius(8)
            
            Button("Login") {
                if !userName.isEmpty && !password.isEmpty {
                    isLoggedIn = true
                }
            }
            .padding()
            .background(.orange)
            .foregroundColor(.white)
        }
        
        
    }
}
