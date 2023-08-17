//
//  ContactInfoView.swift
//  ContactListSUI
//
//  Created by Виталий Гринчик on 17.08.23.
//

import SwiftUI

struct ContactInfoView: View {
    
    let contact: Contact
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct ContactInfoView_Previews: PreviewProvider {
    static var previews: some View {
        ContactInfoView(contact: Contact(id: 1, name: "John", surname: "Smith", phone: ("USA", "111111"), email: "email@mail.ru"))
    }
}
