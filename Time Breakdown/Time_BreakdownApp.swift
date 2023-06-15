//
//  Time_BreakdownApp.swift
//  Time Breakdown
//
//  Created by Vishesh Parwani on 5/30/23.
//

import SwiftUI

@main
struct Time_BreakdownApp: App {
    @StateObject var listViewModel: ListViewModel = ListViewModel()
    var body: some Scene {
        WindowGroup {
            NavigationView{
                HomeScreen()
            }.environmentObject(listViewModel)
        }
    }
}
