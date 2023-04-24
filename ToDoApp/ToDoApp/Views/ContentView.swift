//
//  ContentView.swift
//  ToDoApp
//
//  Created by Nikita on 23.04.2023.
//

import SwiftUI

struct ContentView: View {
    @StateObject var realmManager = RealmManager()
    @State private var showAddTaskView = false
    
    var body: some View {
        
        ZStack(alignment: .bottomTrailing) {
            TasksView()
                .background(.brown)
                .environmentObject(realmManager)
                
            
            SmallAddButton()
                .padding()
                .onTapGesture {
                    showAddTaskView.toggle()
                }
            
            
        }
        .sheet(isPresented: $showAddTaskView) {
            AddTaskView()
                .background(.brown)
                .environmentObject(realmManager)
                
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .bottom)
        .background(.brown)
    }
     
}
  

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            
    }
}
