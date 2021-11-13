//
//  NumbersView.swift
//  RandomPhonebookSwiftUI
//
//  Created by Vahtee Boo on 13.11.2021.
//

import SwiftUI

struct NumbersView: View {
    
    let contacts = Person.getContactList()
    
    var body: some View {
        List(contacts) { contact in
            Section("\(contact.fullName)") {
                Text("\(Image(systemName: "candybarphone")) \(contact.phoneNumber)")
                Text("\(Image(systemName: "mail")) \(contact.email)")
 
            }
//            Text("\(contact.fullName)")
        }
        .navigationTitle("Contact List")
    }
}

struct NumbersView_Previews: PreviewProvider {
    static var previews: some View {
        NumbersView()
    }
}
