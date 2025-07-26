//
//  MainAppView.swift
//  GlobalScopeInTabView_SwiftUI
//
//  Created by Mantosh Kumar on 26/07/25.
//

import SwiftUI

struct MainAppView: View {
    
    @AppStorage("isLoggedIn") private var isLoggedIn = false
    
    var body: some View {        
       if isLoggedIn {
           ContentView()
       } else {
           LoginView()
       }
    }
    
    
    
}
