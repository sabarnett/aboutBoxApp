//
// File: aboutView.swift
// Package: aboutBoxApp
// Created by: Steven Barnett on 28/06/2024
// 
// Copyright © 2024 Steven Barnett. All rights reserved.
//
        
import SwiftUI

struct AboutView: View {
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Image(nsImage: NSImage(named: "AppIcon")!)
                VStack(alignment: .leading, spacing: 10) {
                    Text("\(Bundle.main.appName)")
                        .font(.system(size: 20, weight: .bold))
                        .textSelection(.enabled)
                    
                    Text("Ver: \(Bundle.main.appVersionLong) (\(Bundle.main.appBuild)) ")
                        .textSelection(.enabled)
                }
            }
            
            Link(Constants.homeAddress,
                 destination: Constants.homeUrl )

            Text(Bundle.main.copyright)
                .font(.system(size: 10, weight: .thin))
                .multilineTextAlignment(.center)
        }
        .padding(20)
        .frame(minWidth: 350, minHeight: 200)
    }
}

#Preview {
    AboutView()
}
