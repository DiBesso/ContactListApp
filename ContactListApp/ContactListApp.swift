//
//  ContactListAppApp.swift
//  ContactListApp
//
//  Created by Дмитрий Бессонов on 01.03.2022.
//

import SwiftUI

@main
struct ContactListApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView(isPresented: .constant(true), persons: Person.getContactList(), person: Person.generateContactList())
        }
    }
}
