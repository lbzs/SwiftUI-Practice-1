//
//  Store.swift
//  swiftUIPractice
//
//  Created by Balint Lakatos on 02.07.21.
//

import Foundation

final class Store {

    var isOpen = UserDefaults.standard.bool(forKey: Store.storeIsOpenKey)

    func turnKey(_ direction: Direction) {
        switch direction {
        case .left:
            isOpen = true
        case .right:
            isOpen = false
        }

        UserDefaults.standard.set(isOpen, forKey: Store.storeIsOpenKey)
    }

    enum Direction {
        case left, right
    }

    private static let storeIsOpenKey = "storeIsOpenUserDefaultKey"
}
