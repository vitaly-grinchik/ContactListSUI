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
                
            Label(contact.phone.number, systemImage: "phone")
            Label(contact.email, systemImage: "envelope")
        }
        .navigationTitle(contact.fullName)
    }
}

struct ContactInfoView_Previews: PreviewProvider {
    static var previews: some View {
        ContactInfoView(contact: Contact())
    }
}
