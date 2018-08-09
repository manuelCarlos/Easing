//
//  Array+IsOrdered.swift
//  Easing
//
//  Created by manuel on 09.08.18.
//

import Foundation

extension Array where Iterator.Element: Comparable {
    
    func isOrdered(_ isOrderedBefore: (Iterator.Element, Iterator.Element) -> Bool) -> Bool {
        for index in 1 ..< count {
            if isOrderedBefore(self[index], self[index-1]) {
                return false
            }
        }
        return true
    }
}
