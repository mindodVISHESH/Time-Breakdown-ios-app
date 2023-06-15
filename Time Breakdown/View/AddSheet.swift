//
//  AddSheet.swift
//  Time Breakdown
//
//  Created by Vishesh Parwani on 6/9/23.
//

import SwiftUI

struct AddSheet: View {
    @EnvironmentObject var listviewmodel: ListViewModel
    @State var textFieldText: String = ""
    var body: some View {
        ScrollView{
            VStack {
                TextField("Name of the objective", text: $textFieldText)
                    .padding()
                    .background(.gray)
                    .cornerRadius(10)
                .padding()
                Button("Save", action: saveButtonPressed)
            }
        }.navigationTitle(Text("Add a new objective!"))
    }
    func saveButtonPressed(){
        listviewmodel.addItem(title: textFieldText)
    }
}

struct AddSheet_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            AddSheet()
        }
    }
}
