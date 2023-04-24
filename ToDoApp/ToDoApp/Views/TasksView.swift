//
//  TasksView.swift
//  ToDoApp
//
//  Created by Nikita on 23.04.2023.
//

import SwiftUI

struct TasksView: View {
    @EnvironmentObject var realmManager: RealmManager
    var body: some View {
        VStack {
            Text("My Tasks")
                .font(.title3).bold()
                .padding()
                .frame(maxWidth: .infinity, alignment: .leading)
            
            List {
                ForEach(realmManager.tasks, id: \.id) { task in
                    if !task.isInvalidated {
                        HStack {
                            TaskRow(forDelete: task.id, task: task.title, completed: task.completed)
                                .onTapGesture {
                                    realmManager.updateTask(id: task.id, completed: !task.completed)
                                }
                        }
                        
                    }
                    
                }
               
                .listRowSeparator(.hidden)
                .listRowBackground(Color.clear)
                            
            }
            
            
            .background(Color.brown)
            .scrollContentBackground(.hidden)
            .listRowBackground(Color.brown)
            
            
            
            
        }
      
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(.brown)
        
    }
    
}

struct TasksView_Previews: PreviewProvider {
    static var previews: some View {
        TasksView()
            .environmentObject(RealmManager())

    }
}
