//
//  Objectives.swift
//  Time Breakdown
//
//  Created by Vishesh Parwani on 5/30/23.
//

import Foundation

struct Objective: Identifiable{
    let id:UUID = UUID()
    let name:String
    let hour:Int
    let min:Int
}
