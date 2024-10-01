//
//  ContentView.swift
//  firs_app1_gr1
//
//  Created by Djino Dissingar on 30/09/2024.
//

import SwiftUI

struct ContentView: View {
    @State var uid : String = ""
    @StateObject var authVm : AuthViewModel = AuthViewModel()
    var body: some View {
        if(authVm.isFinishConnecting){
            //la connexion est passée
            if(authVm.isAuth){
                DashboardView()
            }
            else{
                loginView()
            }
            
        }
        else{
            Text("En cours de connexion ...")
        }
    }
}

#Preview {
    ContentView()
}
