//
//  ContentView.swift
//  iExpense
//
//  Created by Juan Francisco Dorado Torres on 22/11/20.
//

import SwiftUI

struct User: Codable {
  var firstName: String
  var lastName: String
}

struct ContentView: View {
  @State private var user = User(firstName: "Taylor", lastName: "Swift")

  var body: some View {
    Button("Save User") {
      let encoder = JSONEncoder()

      if let data = try? encoder.encode(self.user) {
        UserDefaults.standard.set(data, forKey: "User-Data")
      }
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
