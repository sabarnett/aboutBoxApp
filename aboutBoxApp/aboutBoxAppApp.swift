//
// -----------------------------------------
// Original project: aboutBoxApp
// Original package: aboutBoxApp
// Created on: 11/07/2024 by: Steven Barnett
// Web: http://www.sabarnett.co.uk
// GitHub: https://www.github.com/sabarnett
// -----------------------------------------
// Copyright © 2024 Steven Barnett. All rights reserved.
//
        
import Foundation
import SwiftUI

@main
struct aboutBoxAppApp: App {
    @NSApplicationDelegateAdaptor(AppDelegate.self) var appDelegate

    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        
        .commands {
            CommandGroup(replacing: CommandGroupPlacement.appInfo) {
                Button("About \(Bundle.main.appName)") {
                    appDelegate.showAboutWnd()
                }
            }
        }
    }
}
