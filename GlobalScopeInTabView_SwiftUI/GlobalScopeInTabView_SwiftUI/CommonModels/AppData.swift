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
    @Published var address: String = ""
    
    init(userName: String, userRole: String, address: String) {
        self.userName = userName
        self.userRole = userRole
        self.address = address
    }
    
}
