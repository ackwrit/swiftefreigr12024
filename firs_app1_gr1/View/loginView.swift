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
    @State var isSheet = false
    @Environment(\.isPresented) var dismiss
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
                
                
                Button("Inscription") {
                    isSheet.toggle()
                    
                    
                }
                .alert("Erreur", isPresented: $isSheet) {
                    Button("Annuler", role: .cancel) {
                        
                    }
                    Button("Detruire", role: .destructive) {
                        
                    }
                    Button("Valider", role: .none) {
                        
                    }
                } message: {
                    Text("Mon message")
                }

               
            }
            .padding()
        }
        
        
        
    }
    
}

#Preview {
    loginView()
}
