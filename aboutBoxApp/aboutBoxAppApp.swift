//
// File: aboutBoxAppApp.swift
// Package: aboutBoxApp
// Created by: Steven Barnett on 27/06/2024
// 
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
