//
//  MainAppView.swift
//  GlobalScopeInTabView_SwiftUI
//
//  Created by Mantosh Kumar on 26/07/25.
//

import SwiftUI

struct MainAppView: View {
    
    @AppStorage("isLoggedIn") private var isLoggedIn = false
    @StateObject private var appData = AppData(userName: "", userRole: "", token: "")
    
    var body: some View {        
       if isLoggedIn {
           ContentView()
               .environmentObject(appData)
       } else {
           LoginView(appData: appData)
       }
    }
    
}
