//
//  ContentView.swift
//  iExpense
//
//  Created by Juan Francisco Dorado Torres on 22/11/20.
//

import SwiftUI

struct ExpenseItem: Identifiable {
  let id = UUID()
  let name: String
  let type: String
  let amount: Int
}

class Expenses: ObservableObject {
  @Published var items: [ExpenseItem] = []
}

struct ContentView: View {
  @ObservedObject var expenses = Expenses()
  @State private var showingAddExpense = false

  var body: some View {
    NavigationView {
      List {
        ForEach(expenses.items) { item in
          Text(item.name)
        }
        .onDelete(perform: removeItems)
      }
      .navigationBarTitle("iExpense")
      .navigationBarItems(
        trailing: Button(
          action: {
            let expense = ExpenseItem(name: "Test", type: "Personal", amount: 5)
            self.expenses.items.append(expense)
          },
          label: {
            Image(systemName: "plus")
          }
        )
      )
      .sheet(isPresented: $showingAddExpense) {
        AddView()
      }
    }
  }

  func removeItems(at offsets: IndexSet) {
    expenses.items.remove(atOffsets: offsets)
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
