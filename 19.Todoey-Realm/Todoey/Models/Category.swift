//
//  Category.swift
//  Todoey
//
//  Created by Keon Hee Park on 2022/04/14.
//  Copyright © 2022 App Brewery. All rights reserved.
//

import Foundation
import RealmSwift

class Category: Object {
    @Persisted var name: String = ""
    @Persisted var color: String = ""
    
    @Persisted var items: List<Item>
}
