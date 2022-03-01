//
//  ContentView.swift
//  ContactListApp
//
//  Created by Дмитрий Бессонов on 01.03.2022.
//

import SwiftUI

struct ContentView: View {
    @Binding var isPresented: Bool
    let persons: [Person]
    let person: Person
    var body: some View {
        TabView {
            ContactsView(isPresented: $isPresented, persons: persons)
                .tabItem {
                    Label("Contacts", systemImage: "person.circle")
                }
            NumbersView(persons: persons, person: person)
                .tabItem {
                    Label("Numbers", systemImage: "phone")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(isPresented: .constant(true), persons: Person.getContactList(), person: Person.generateContactList())
    }
}
