//
//  OjectiveRow.swift
//  Time Breakdown
//
//  Created by Vishesh Parwani on 5/30/23.
//

import SwiftUI

struct ListRowView: View {
    let item: Objective
    var body: some View {
        VStack(alignment: .leading){
            Text(item.name)
                .fontWeight(.semibold)
            Text("Total Time: \(item.hour)hr \(item.min)min")
                .font(.caption)
        }
    }
}

struct ListRowView_Previews: PreviewProvider {
    static var previews: some View {
        ListRowView(item: Objective(name: "First One", hour: 4, min: 43))
        
    }
}
