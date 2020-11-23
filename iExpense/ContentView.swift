//
//  ContentView.swift
//  iExpense
//
//  Created by Juan Francisco Dorado Torres on 22/11/20.
//

import SwiftUI

class User: ObservableObject {
  @Published var firstName = "Bilbo"
  @Published var lastName = "Baggins"
}

struct ContentView: View {
  @ObservedObject var user = User()

  var body: some View {
    VStack {
      Text("Yout name is \(user.firstName) \(user.lastName)")

      TextField("First name", text: $user.firstName)

      TextField("Last name", text: $user.lastName)
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
