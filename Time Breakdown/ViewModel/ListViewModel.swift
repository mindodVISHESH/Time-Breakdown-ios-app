//
//  ListViewModel.swift
//  Time Breakdown
//
//  Created by Vishesh Parwani on 6/7/23.
//

import Foundation

class ListViewModel:ObservableObject{
    
    @Published var items: [Objective] = []
    
    init(){
        getItem()
    }
    
    func getItem(){
        let NewItems = [
            Objective(name: "First One", hour: 5, min: 40),
            Objective(name: "Second", hour: 4, min: 39),
            Objective(name: "Third", hour: 2, min: 15),
        ]
        items.append(contentsOf: NewItems)
    }
    func deleteItem(indexSet: IndexSet){
        items.remove(atOffsets: indexSet)
    }
    func moveItem(from: IndexSet, to: Int){
        items.move(fromOffsets: from, toOffset: to)
    }
    
    func addItem(title: String){
        let newItem = Objective(name: title, hour: 0, min: 0)
        items.append(newItem)
    }
}
