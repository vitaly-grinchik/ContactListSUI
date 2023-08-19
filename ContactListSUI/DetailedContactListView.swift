//
//  DetailedContactListView.swift
//  ContactListSUI
//
//  Created by Виталий Гринчик on 19.08.23.
//

import SwiftUI

struct DetailedContactListView: View {
    
    let contacts: [Contact]
    
    var body: some View {
        NavigationStack {
            List(contacts) { contact in
                Section(contact.fullName) {
                    Label(contact.phone.number, systemImage: "phone")
                    Label(contact.email, systemImage: "envelope")
                    Label(contact.phone.country, systemImage: "flag")
                }
            }
            .listStyle(.plain)
            .scrollIndicators(.hidden)
            .navigationTitle("Contact List")
        }
    }
}

struct DetailedContactListView_Previews: PreviewProvider {
    static var previews: some View {
        DetailedContactListView(contacts: Contact.getContactList())
    }
}
