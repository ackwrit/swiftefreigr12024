//
//  FirebaseManager.swift
//  firs_app1_gr1
//
//  Created by Djino Dissingar on 30/09/2024.
//

import Foundation
import Firebase
import FirebaseAuth

class FirebaseManager{
    //fait de la gestion avec la base de donnée
    //attributs
    
    //variable qui va etre partagé avec les modèles
    
    let shared = FirebaseManager()
    //variable pointe sur la partie authentification de Firebase
    var auth : Auth
    //variable qui permet la création de la collection
    var userRef : CollectionReference {
        return Firestore.firestore().collection("UTILISATEURS")
        }
    
    
    
    
    
    //constructeur
    init() {
        if(FirebaseApp.app() == nil){
            FirebaseApp.configure()
        }
        auth = Auth.auth()
        
    }
    
    
    
    //methode
    //récupérér l'identifiant d'un utilisateur
    func getId() -> String{
        return auth.currentUser?.uid ?? ""
    }
    
    
    
    //ajouter un utilisateur dans la base donnée
    func addUser(uid : String , data:[String:Any]){
        let doc = userRef.document(uid)
        doc.setData(data)
        
    }
    
    //mettre à jour un utilisateur
    func updateUser(uid : String , data:[String:Any]){
        let doc = userRef.document(uid)
        doc.updateData(data)
        
    }
    
    //creer un utilisateur
    func createUser(mail : String , pass : String) async -> String{
        do {
            let result = try await auth.createUser(withEmail: mail, password: pass)
            let uid = result.user.uid
            let datas = ["MAIL":mail]
            addUser(uid: uid, data: datas)
            return uid
            
        }
        catch{
            print("je n'arrive pas à créer d'utilisateur")
            return ""
        }
        
    }
    
    func connectUser(mail : String, password : String)  async -> String{
        
        do {
             let result = try await auth.signIn(withEmail: mail, password: password)
            let uid = result.user.uid
            return uid
            
        }
        catch{
            print("je n'arrive pas à me connecter")
            return ""
        }
        
        
    }
 
    
   
    
    
}
