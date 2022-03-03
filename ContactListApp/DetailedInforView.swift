//
//  DetailedInforView.swift
//  ContactListApp
//
//  Created by Дмитрий Бессонов on 01.03.2022.
//

import SwiftUI

struct DetailedInforView: View {
    let persons: [Person]
    let person: Person
    
    var body: some View {
        List {
                Image(systemName: "person.circle")
                .resizable()
                .frame(width: 120, height: 120, alignment: .center)
                Text(person.phoneNumber)
                .font(.title3)
            Text(person.email)
                .font(.title3)
        }
        .navigationTitle(person.fullName)
    }
}

struct DetailedInforView_Previews: PreviewProvider {
    static var previews: some View {
        DetailedInforView(persons: Person.getContactList(), person: Person.getPerson())
    }
}
