//
//  ContsctsView.swift
//  RandomPhonebookSwiftUI
//
//  Created by Vahtee Boo on 13.11.2021.
//

import SwiftUI

struct ContactsView: View {
    
    let contacts = Person.getContactList()
    
    var body: some View {
        HStack {
            NavigationView {
                
                List(contacts) { contact in
                    NavigationLink(contact.fullName) {
                        DetailsView(name: contact.name,
                                    surname: contact.surname,
                                    phone: contact.phoneNumber,
                                    email: contact.email)
                    }
                }
                .navigationTitle("Contact List")
            }
        }
    }
}

struct ContsctsView_Previews: PreviewProvider {
    static var previews: some View {
        ContactsView()
    }
}
