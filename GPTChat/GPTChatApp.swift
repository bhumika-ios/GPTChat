//
//  GPTChatApp.swift
//  GPTChat
//
//  Created by Bhumika Patel on 03/04/23.
//

import SwiftUI

@main
struct GPTChatApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
