//
//  DashboardView.swift
//  firs_app1_gr1
//
//  Created by Djino Dissingar on 30/09/2024.
//

import SwiftUI

struct DashboardView: View {
    var body: some View {
        TabView(selection: .constant(1)) {
            AllPersonnView()
                .tabItem {
                    Image(systemName: "person")
                    Text("People")
                }
            Text("Salut")
                .tabItem {
                    Image(systemName: "folder")
                    Text("Projets")
                }
            Text("Coucou")
                .tabItem {
                    Image(systemName: "gear")
                    Text("Settings")
                }
        }
        
       
    }
}

#Preview {
    DashboardView()
}
