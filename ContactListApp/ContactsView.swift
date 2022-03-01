//
//  ContactsView.swift
//  ContactListApp
//
//  Created by Дмитрий Бессонов on 01.03.2022.
//

import SwiftUI

struct ContactsView: View {
    @Binding var isPresented: Bool
    let persons: [Person]
    
    var body: some View {
        NavigationView {
            ZStack{
                List(persons) { person in
                    NavigationLink {
                        DetailedInforView(isPresented: $isPresented , persons: persons, person: person)
                    } label: {
                        PersonRow(persons: persons, person: person)
                    }

                   
                }
            }
            .navigationTitle("Contact List")
            
        }
    }
}

struct ContactsView_Previews: PreviewProvider {
    static var previews: some View {
        ContactsView(isPresented: .constant(true), persons: Person.getContactList())
    }
}
