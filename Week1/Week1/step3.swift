//
//  step3.swift
//  Week1
//
//  Created by 김인호 on 2022/05/27.
//

import Foundation

func makePepero(using ingredient: String, and topping: String? = nil, height: Int, stickHeight: Int) {
    let information = """
                         <정보>
                         길이: \(height)
                         몸통: \(ingredient)
                         토핑: \(topping ?? " ")
                         막대길이: \(stickHeight)
                         """
    
    print(information, terminator: "\n\n")
    makePeperoBody(of: height, using: ingredient, and: topping)
    makePeperoStick(of: stickHeight)
}

func makePartOfBody(using ingredient: String, and topping: String?, order: Int) {
    if let topping = topping {
        if order % 2 != 0 {
            print("\(topping)\(ingredient) ")
        } else {
            print(" \(ingredient)\(topping)")
        }
    } else {
        print(" \(ingredient) ")
    }
}

func makePeperoBody(of height: Int, using ingredint: String, and topping: String?) {
    for i in 1...height {
        makePartOfBody(using: ingredint, and: topping, order: i)
    }
}

func makePeperoStick(of height: Int) {
    for _ in 1...height {
        let stick = " | | "
        print(stick)
    }
}
