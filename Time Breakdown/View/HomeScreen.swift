//
//  ContentView.swift
//  Time Breakdown
//
//  Created by Vishesh Parwani on 5/30/23.
//

import SwiftUI

struct HomeScreen: View {
    @EnvironmentObject var listViewModel: ListViewModel
    @State var showAddSheet = false
    var body: some View {
        VStack {
            List{
                ForEach(listViewModel.items){item in
                    NavigationLink(destination: Text("Second Screen")){
                        ListRowView(item: item)
                        Spacer()
                    }
                }.onDelete(perform: listViewModel.deleteItem)
                    .onMove(perform: listViewModel.moveItem)
            }.navigationTitle(Text("Objectives"))
                .listStyle(.plain)
                .navigationBarItems(leading: EditButton())
            Button("Add Objective"){
                showAddSheet.toggle()
            }
        }.sheet(isPresented: $showAddSheet){
            AddSheet().presentationDetents([.fraction(0.2),.medium])
        }
    }
}

struct HomeScreen_Previews: PreviewProvider {
    static var previews: some View { 
        NavigationView{
            HomeScreen()
        }.environmentObject(ListViewModel())
    }
}

//.navigationBarItems(leading: EditButton(), trailing: NavigationLink("Add", destination: AddSheet()))
