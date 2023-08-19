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
        List {
            HStack() {
                Spacer()
                Image(systemName: "person.fill")
                    .resizable()
                .frame(width: 120, height: 120)
                Spacer()
            }
            .padding()
                
            Label(contact.phone, systemImage: "phone")
            Label(contact.email, systemImage: "envelope")
        }
        .navigationTitle(contact.fullName)
    }
}

struct ContactInfoView_Previews: PreviewProvider {
    static var previews: some View {
        ContactInfoView(
            contact: Contact(
                name: "Steve",
                surname: "Jobes",
                phone: "=1 11 111-11-11",
                email: "1@apple.com"
            )
        )
    }
}
