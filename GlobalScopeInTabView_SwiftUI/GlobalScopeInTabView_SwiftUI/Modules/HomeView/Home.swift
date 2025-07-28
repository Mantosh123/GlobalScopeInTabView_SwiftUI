//
//  Home.swift
//  GlobalScopInTabView_SwiftUI
//
//  Created by Mantosh Kumar on 25/07/25.
//

import SwiftUI

struct HomeView: View {
    
    @ObservedObject var appData: AppData
    
    var body: some View {
        VStack {
            Text("Enter User Info")
                .bold()
                .padding()
            
            TextField("Name:", text: $appData.userName)
                .textFieldStyle(.roundedBorder)
                .padding()
            
            TextField("Role", text: $appData.userRole)
                .textFieldStyle(.roundedBorder)
                .padding()
            
            TextField("Address", text: $appData.address)
                .textFieldStyle(.roundedBorder)
                .padding()
            
            Spacer()
                        
        }
    }
    
    
}
