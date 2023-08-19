//
//  BriefContactListView.swift
//  ContactListSUI
//
//  Created by Виталий Гринчик on 14.08.23.
//

import SwiftUI

struct BriefContactListView: View {
    
    let contacts: [Contact]
    
    var body: some View {
        NavigationStack {
            List(contacts) { contact in
                NavigationLink(destination: ContactInfoView(contact: contact)) {
                    Text(contact.fullName)
                }
            }
            .scrollIndicators(.hidden)
            .listStyle(.plain)
            .navigationTitle("Contact List")
        }
    }
}

struct BriefContactListView_Previews: PreviewProvider {
    static var previews: some View {
        BriefContactListView(contacts: Contact.getContactList())
    }
}