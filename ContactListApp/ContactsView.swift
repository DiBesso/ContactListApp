//
//  ContactsView.swift
//  ContactListApp
//
//  Created by Дмитрий Бессонов on 01.03.2022.
//

import SwiftUI

struct ContactsView: View {
    @State private var isPresented = false
    let persons: [Person]
    
    var body: some View {
        NavigationView {
            ZStack{
                List(persons) { person in
                    NavigationLink {
                        DetailedInforView(persons: persons, person: person)
                    } label: {
                        PersonRow(person: person)
                    }

                   
                }
            }
            .navigationTitle("Contact List")
            
        }
    }
}

struct ContactsView_Previews: PreviewProvider {
    static var previews: some View {
        ContactsView(persons: Person.getContactList())
    }
}
