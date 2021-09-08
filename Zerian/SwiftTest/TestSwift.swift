//
//  TestSwift.swift
//  Zerian
//
//  Created by Кирилл on 06.09.2021.
//

import Foundation
import SwiftUI


class MyClass{
    
    
    
    private var str = String()
    private var updatedString: String?
    
    init() {
        
        updatedString = str.isEmpty ? "Not empty" : String(str.count)
        
    }
    
}
