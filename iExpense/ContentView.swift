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

struct ContentView: View {
  var body: some View {
    Text("Hello World!")
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
