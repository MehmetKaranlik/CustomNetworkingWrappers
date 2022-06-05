//
//  ContentView.swift
//  CustomNetworkingWrappers
//
//  Created by mehmet karanlık on 5.06.2022.
//

import SwiftUI

struct ContentView: View {
   let timer = Timer.publish(every: 0.1, on: .main, in: .common).autoconnect()

   @FirebaseObject<FirebaseObjectTestModel> var object

    var body: some View {
       VStack {
          Text(object?.number?.description ?? "0")
             .padding()

       }
       .onReceive(timer) { _ in
          let randomNumber = Int.random(in: 0..<10000)
          object = FirebaseObjectTestModel(["number": randomNumber])
       }

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
