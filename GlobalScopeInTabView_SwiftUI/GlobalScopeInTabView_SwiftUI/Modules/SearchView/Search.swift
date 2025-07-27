//
//  Search.swift
//  GlobalScopInTabView_SwiftUI
//
//  Created by Mantosh Kumar on 25/07/25.
//

import SwiftUI

struct SearchView: View {
    
    @EnvironmentObject var appData: AppData
    
    var body: some View {
        
        VStack {
            Text("Search View")
            
            Text("user: \(appData.userName)")
            Text("role:\(appData.userRole)")
            Text("Token: \(appData.token)")
        }
    }
}
