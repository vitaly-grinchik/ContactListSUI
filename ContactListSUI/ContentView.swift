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
            // TODO: - Use enum for ContactListView brief and short
            ContactListView()
                .tabItem {
                    Image(systemName: "person.2")
                    Text("Contacts")
                }
            ContactListView()
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
