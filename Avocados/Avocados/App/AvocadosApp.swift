//
//  AvocadosApp.swift
//  Avocados
//
//  Created by Minh Tiến Đặng on 11/01/2022.
//

import SwiftUI

@main
struct AvocadosApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            MainView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
