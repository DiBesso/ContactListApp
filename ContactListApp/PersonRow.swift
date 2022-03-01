//
//  PersonRow.swift
//  ContactListApp
//
//  Created by Дмитрий Бессонов on 01.03.2022.
//

import SwiftUI

struct PersonRow: View {
    @State private var isPresented = false
    let persons: [Person]
    let person: Person
    
    var body: some View {
        Button(action: {
            isPresented.toggle() }) {
                HStack {
                    Text("\(person.fullName)")
                    Spacer()
                }
            }
    }
}

struct PersonRow_Previews: PreviewProvider {
    static var previews: some View {
        PersonRow(persons: Person.getContactList(), person: Person.generateContactList())
    }
}
