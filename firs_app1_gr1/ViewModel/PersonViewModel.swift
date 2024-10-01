//
//  File.swift
//  firs_app1_gr1
//
//  Created by Djino Dissingar on 01/10/2024.
//

import Foundation
import Firebase
import FirebaseFirestore

class PersonViewModel : ObservableObject{
    //lien avec la struct personne
    @Published var user : Person?
    
    //lien avec la base de donnée
    var manager = FirebaseManager.init()
    
    
    //constructeur
    init(id : String) {
        getUserWith(id: id)
    }
    
    
    func getUserWith(id : String){
        manager.userRef.document(id).addSnapshotListener(resultat)
        
    }
    
    
    func resultat(snapshot : DocumentSnapshot?,error: Error?){
        guard let snap = snapshot else {return }
        let id = snap.documentID
        let datas = snap.data() ?? [:]
        let newUser = Person(id: id, dict: datas)
        self.user = newUser
        
    }
    
    
    
}
