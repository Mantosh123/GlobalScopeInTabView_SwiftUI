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
    @State private var showAlert = false
    @State private var alertMessage = ""
    
    @ObservedObject var appData: AppData
    
    var body: some View {
        
        VStack(spacing: 20) {
            Spacer()
            Text("Login")
                .font(.largeTitle)
                .bold()
            
            TextField("UserName", text: $userName)
                .padding()
                .background(Color(.systemGray6))
                .clipShape(RoundedRectangle(cornerRadius: 12))
                .padding()
            TextField("Password", text: $password)
                .padding()
                .background(Color(.systemGray6))
                .clipShape(RoundedRectangle(cornerRadius: 12))
                .padding()
            
            Button("Login") {
                if userName.isEmpty || password.isEmpty {
                    alertMessage = "Textfield should not empty"
                    showAlert = true
                } else {
                    appData.userName = userName
                    appData.userRole = "admin"
                    appData.token = "manto-kum-123"
                    
                    showAlert = false
                    isLoggedIn = true
                }
            }
            .padding()
            .background(.orange)
            .foregroundColor(.white)
            .clipShape(RoundedRectangle(cornerRadius: 12))
            .frame(width: 200)
            Spacer()
            Spacer()
        }
        .alert("Login Error", isPresented: $showAlert) {
            Button("OK", role: .cancel) {}
        } message: {
            Text(alertMessage)
        }
        
        
    }
}
