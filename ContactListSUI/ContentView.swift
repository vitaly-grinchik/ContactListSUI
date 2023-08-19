//
//  ContentView.swift
//  ContactListSUI
//
//  Created by Виталий Гринчик on 17.08.23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            ContactListBriefView()
                .tabItem {
                    Image(systemName: "person.2")
                    Text("Contacts")
                }
            ContactListBriefView()
                .tabItem {
                    Image(systemName: "phone")
                    Text("Numbers")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
