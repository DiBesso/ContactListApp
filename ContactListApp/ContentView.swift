//
//  ContentView.swift
//  ContactListApp
//
//  Created by Дмитрий Бессонов on 01.03.2022.
//

import SwiftUI

struct ContentView: View {
    
    let persons: [Person]
    
    var body: some View {
        TabView {
            ContactsView(persons: persons)
                .tabItem {
                    Label("Contacts", systemImage: "person.circle")
                }
            NumbersView(persons: persons)
                .tabItem {
                    Label("Numbers", systemImage: "phone")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(persons: Person.getContactList())
    }
}
