//
//  ContentView.swift
//  iExpense
//
//  Created by Juan Francisco Dorado Torres on 22/11/20.
//

import SwiftUI

struct ContentView: View {
  @State private var numbers: [Int] = []
  @State private var currentNumber = 1

  var body: some View {
    NavigationView {
      VStack {
        List {
          ForEach(numbers, id: \.self) {
            Text("\($0)")
          }
          .onDelete(perform: removeRows)
        }

        Button("Add Number") {
          self.numbers.append(self.currentNumber)
          self.currentNumber += 1
        }
      }
      .navigationBarItems(leading: EditButton())
    }
  }

  func removeRows(at offsets: IndexSet) {
    numbers.remove(atOffsets: offsets)
  }
}

struct SecondView: View {
  @Environment(\.presentationMode) var presentationMode

  var body: some View {
    Button("Dismiss") {
      self.presentationMode.wrappedValue.dismiss()
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
