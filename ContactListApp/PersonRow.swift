//
//  PersonRow.swift
//  ContactListApp
//
//  Created by Дмитрий Бессонов on 01.03.2022.
//

import SwiftUI

struct PersonRow: View {
    let person: Person
    
    var body: some View {
        Button(action: {}) {
                HStack {
                    Text(person.fullName)
                    Spacer()
                }
            }
    }
}

struct PersonRow_Previews: PreviewProvider {
    static var previews: some View {
        PersonRow(person: Person.getPerson())
    }
}
