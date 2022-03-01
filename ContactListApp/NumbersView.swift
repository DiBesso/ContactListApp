//
//  NumbersView.swift
//  ContactListApp
//
//  Created by Дмитрий Бессонов on 01.03.2022.
//

import SwiftUI

struct NumbersView: View {
    let persons: [Person]
    let person: Person
    
    var body: some View {
        NavigationView{
            ZStack{
                List {
                    ForEach(persons) { person in
                        Section("\(person.fullName)") {
                            Text(person.phoneNumber)
                            Text(person.email)
                        }
                    }
                }
            }
            .navigationTitle("Contact List")
        }
    }
}

struct NumbersView_Previews: PreviewProvider {
    static var previews: some View {
        NumbersView(persons: Person.getContactList(), person: Person.generateContactList())
    }
}
