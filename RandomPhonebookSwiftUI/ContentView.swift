//
//  ContentView.swift
//  RandomPhonebookSwiftUI
//
//  Created by Vahtee Boo on 13.11.2021.
//

import SwiftUI

struct ContentView: View {
    
    //    @ObservedObject var persons: Persons
    //    let contacts = Person.getContactList()
    
    var body: some View {
        
        TabView {
            ContactsView()
                .tabItem {
                    Label("Contacts", systemImage: "person.3.fill")
                }
            NumbersView()
                .tabItem {
                    Label("Numbers", systemImage: "phone.fill")
                }
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
