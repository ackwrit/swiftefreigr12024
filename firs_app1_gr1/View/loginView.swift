//
//  loginView.swift
//  firs_app1_gr1
//
//  Created by Djino Dissingar on 30/09/2024.
//

import SwiftUI

struct loginView: View {
    @State var mail = ""
    @State var pass = ""
    @State var idUser : String = ""
    @State var isSheet = false
    var inscription = FirebaseManager.init()
    
    
    
    
    var body: some View {
        
    NavigationView {
            VStack {
                Image("gon")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .cornerRadius(20)
                TextField("Entrer votre mail", text: $mail)
                SecureField("Entrer votre mot de passe", text: $pass)
                Spacer()
                
                NavigationLink("Connexion")
                {
                    DashboardView()
                }
                
                
                
                
                Button("Inscription")  {
                    
                    Task{
                        idUser = await inscription.createUser(mail: mail, pass: pass)
                    }
                    
                }
               

               
            }
            .padding()
        }
        
        
        
    }
    
}

#Preview {
    loginView()
}
