//
//  ContentView.swift
//  iExpense
//
//  Created by Juan Francisco Dorado Torres on 22/11/20.
//

import SwiftUI

struct ExpenseItem {
  let name: String
  let type: String
  let amount: Int
}

class Expenses: ObservableObject {
  @Published var items: [ExpenseItem] = []
}

struct ContentView: View {
  @ObservedObject var expenses = Expenses()

  var body: some View {
    NavigationView {
      List {
        ForEach(expenses.items, id: \.name) { item in
          Text(item.name)
        }
      }
      .navigationBarTitle("iExpense")
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
