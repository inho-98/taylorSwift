//
//  step3.swift
//  Week1
//
//  Created by 김인호 on 2022/05/27.
//

import Foundation

func makePepero(height: Int, body: String, topping: String, stickHeight: Int) {
    let information = """
                         <정보>
                         길이: \(height)
                         몸통: \(body)
                         토핑: \(topping)
                         막대길이: \(stickHeight)
                         """
    let stick = " | | "
    print(information, terminator: "\n\n")
    for _ in 1...height/2 {
        print("\(topping)\(body) ")
        print(" \(body)\(topping)")
    }
    for _ in 1...stickHeight {
        print(stick)
    }
}
