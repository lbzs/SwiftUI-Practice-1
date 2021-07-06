//
//  StoreView.swift
//  swiftUIPractice
//
//  Created by Balint Lakatos on 02.07.21.
//

import SwiftUI

struct StoreView: View {

    @ObservedObject var store = ObservableStore()

    var body: some View {
        VStack {
            Text("Store is \(store.isOpen ? "🔓" : "🔒")").font(.largeTitle)
            Button("\(store.isOpen ? "Lock it" : "Open it")") {
                store.turnKey(store.isOpen ? .right : .left)
            }
            Toggle("\(store.isOpen ? "Lock it" : "Open it")",
                   isOn: Binding(get: { store.isOpen }, set: { _,_ in store.turnKey(store.isOpen ? .right : .left) }))
        }
    }
}

struct StoreView_Previews: PreviewProvider {
    static var previews: some View {
        StoreView()
    }
}
