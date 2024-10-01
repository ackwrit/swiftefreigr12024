//
//  AllPersonnView.swift
//  firs_app1_gr1
//
//  Created by Djino Dissingar on 30/09/2024.
//

import SwiftUI

struct AllPersonnView: View {
    @StateObject var userVm : PersonViewModel = PersonViewModel(id: "")
    var body: some View {
        Text("NOM : \(userVm.user!.nom)")
    }
}

#Preview {
    AllPersonnView()
}
