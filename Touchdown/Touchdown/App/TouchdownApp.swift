//
//  TouchdownApp.swift
//  Touchdown
//
//  Created by Minh Tiến Đặng on 03/01/2022.
//

import SwiftUI

@main
struct TouchdownApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(Shop())
        }
    }
}
