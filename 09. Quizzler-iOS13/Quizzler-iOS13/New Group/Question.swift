//
//  Question.swift
//  Quizzler-iOS13
//
//  Created by 건희 on 2022/03/15.
//  Copyright © 2022 The App Brewery. All rights reserved.
//

import Foundation

struct Question {
    let text: String
    let answer: String
    
    init(q: String, a: String) {
        text = q
        answer = a
    }
    
}
