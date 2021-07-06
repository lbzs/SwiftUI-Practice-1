//
//  ObservableStore.swift
//  swiftUIPractice
//
//  Created by Balint Lakatos on 06.07.21.
//

import SwiftUI

final class ObservableStore: ObservableObject {

    @Published var isOpen: Bool

    private let store: Store

    init() {
        store = Store()
        isOpen = store.isOpen
    }

    func turnKey(_ direction: Store.Direction) {
        store.turnKey(direction)

        isOpen = store.isOpen
    }
}
