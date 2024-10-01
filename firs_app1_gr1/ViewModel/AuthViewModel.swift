//
//  AuthViewModel.swift
//  firs_app1_gr1
//
//  Created by Djino Dissingar on 30/09/2024.
//

import Foundation
import Firebase
import FirebaseAuth

class AuthViewModel : ObservableObject{
    //variable qui va indiquer si on est connecté à la base de donnée
    @Published var isFinishConnecting = false
    //variable qui sert à connaitre si on est authentifié
    @Published var isAuth = false
    //variable qui gère les erreurs
    @Published var showError = false
    //variable qui indique les erreurs
    var errorString = ""
    //variable des données
    var datas: [String:Any] = [:]
    //variable qui fait le lien avec la base de donnée
    var manager = FirebaseManager.init()
    
    var auth : Auth {
        return manager.auth
        
    }
    
    //constructeur
    init(){
        observeAuthentification()
    }
    
    
    //méthode
    
    //va determiner si on s'est authentifier ou pas
    func observeAuthentification(){
        auth.addStateDidChangeListener(handleListener)
    }
    
    func handleListener(auth : Auth , user : User?){
        self.isFinishConnecting = true
        self.isAuth = user != nil
        
       
    }
    
    
    
    
}
