//
//  step2.swift
//  Week1
//
//  Created by 김인호 on 2022/05/27.
//

import Foundation

func makeIceCreamBody(width: Int, height: Int) -> String {
    var result = ""
    for _ in 1...height {
        result += String(repeating: "*", count: width) + "\n"
    }
    return result
}

func makeIceCreamStick(_ stick: String, space: Int, height: Int) -> String {
    var result = ""
    for _ in 1...height {
        result += String(repeating: " ", count: space) + stick + "\n"
    }
    return result
}

func makeIceCream(bodyWidth: Int, bodyHeight: Int) -> String {
    var result = ""
    let space = (bodyWidth - 3) / 2
    let stickHeight = bodyHeight / 2
    result += makeIceCreamBody(width: bodyWidth, height: bodyHeight)
    if bodyWidth % 2 != 0 {
        result += makeIceCreamStick("| |", space: space, height: stickHeight)
    } else {
        result += makeIceCreamStick("|  |", space: space, height: stickHeight)
    }
    return result
}
