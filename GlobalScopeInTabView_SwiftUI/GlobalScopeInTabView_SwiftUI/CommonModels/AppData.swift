//
//  AppData.swift
//  GlobalScopeInTabView_SwiftUI
//
//  Created by Mantosh Kumar on 27/07/25.
//

import SwiftUI

class AppData: ObservableObject {
    
    @Published var userName: String = ""
    @Published var userRole: String = ""
    @Published var token: String = ""
    
    init(userName: String, userRole: String, token: String) {
        self.userName = userName
        self.userRole = userRole
        self.token = token
    }
    
}
