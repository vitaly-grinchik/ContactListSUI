//
//  ContactListView.swift
//  ContactListSUI
//
//  Created by Виталий Гринчик on 14.08.23.
//

import SwiftUI

struct ContactListView: View {
    
    private let contacts = Contact.getContactList()
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(contacts, id: \.id) { contact in
                    Text(contact.fullName)
                }
            }
            .scrollIndicators(.hidden)
            .listStyle(.plain)
            .navigationTitle("Contacts")
        }
    }
}

struct ContactListView_Previews: PreviewProvider {
    static var previews: some View {
        ContactListView()
    }
}
