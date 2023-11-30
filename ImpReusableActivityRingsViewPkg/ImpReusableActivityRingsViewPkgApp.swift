//
//  ImpReusableActivityRingsViewPkgApp.swift
//  ImpReusableActivityRingsViewPkg
//
//  Created by Veena Shekhar on 30/11/23.
//

import SwiftUI
import SwiftData

@main
struct ImpReusableActivityRingsViewPkgApp: App {
    var sharedModelContainer: ModelContainer = {
        let schema = Schema([
            Item.self,
        ])
        let modelConfiguration = ModelConfiguration(schema: schema, isStoredInMemoryOnly: false)

        do {
            return try ModelContainer(for: schema, configurations: [modelConfiguration])
        } catch {
            fatalError("Could not create ModelContainer: \(error)")
        }
    }()

    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .modelContainer(sharedModelContainer)
    }
}
