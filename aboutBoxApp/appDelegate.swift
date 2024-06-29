//
// File: appDelegate.swift
// Package: aboutBoxApp
// Created by: Steven Barnett on 28/06/2024
// 
// Copyright © 2024 Steven Barnett. All rights reserved.
//
        
import SwiftUI

class AppDelegate: NSObject, NSApplicationDelegate {
    
    private var aboutBoxWindowController: NSWindowController?
    
    func showAboutWnd() {
        if aboutBoxWindowController == nil {
            let styleMask: NSWindow.StyleMask = [.closable, .miniaturizable, .titled]
            let window = NSWindow()
            window.styleMask = styleMask
            window.title = "About \(Bundle.main.appName)"
            window.contentView = NSHostingView(rootView: AboutView())
            window.center()
            aboutBoxWindowController = NSWindowController(window: window)
        }

        aboutBoxWindowController?.showWindow(aboutBoxWindowController?.window)
    }
}
