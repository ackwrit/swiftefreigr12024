//
//  Person.swift
//  firs_app1_gr1
//
//  Created by Djino Dissingar on 30/09/2024.
//

import Foundation
import SwiftUI

struct Person : Identifiable {
    //attributs
    var uid : String
    var _nom : String?
    var _prenom : String?
    var _mail : String?
    var _avatar : String?
    
    var id : String {
        return uid
    }
    
    var nom :String {
        return _nom ?? ""
    }
    
    var prenom: String {
        return _prenom ?? ""
    }
    
    var mail : String {
        return _mail ?? ""
    }
    
    var avatar : String {
        return _avatar ?? ""
    }
    
    var fullName : String {
        return prenom + " " + nom
    }
    
    //constructeur
    init(id : String,dict:[String:Any]){
        self.uid = id
        self._prenom = dict["PRENOM"] as? String
        self._mail = dict["MAIL"] as? String
        self._nom = dict["NOM"] as? String
        self._avatar = dict["AVATAR"] as? String
        
        
    }
    
    //méthodes
    
}


