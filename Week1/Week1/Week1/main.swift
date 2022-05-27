//
//  main.swift
//  Week1
//
//  Created by 김인호 on 2022/05/27.
//

import Foundation

func makeIceCreamBody(width: Int, height: Int) {
    for _ in 1...height {
        print(String(repeating: "*", count: width))
    }
}

func makeIceCreamStick(_ stick: String, space: Int, height: Int) {
    for _ in 1...height {
        print(String(repeating: " ", count: space), terminator: "")
        print(stick)
    }
}

func makeIceCream(bodyWidth: Int, bodyHeight: Int) {
    let space = (bodyWidth - 3) / 2
    let stickHeight = bodyHeight / 2
    makeIceCreamBody(width: bodyWidth, height: bodyHeight)
    if bodyWidth % 2 != 0 {
        makeIceCreamStick("| |", space: space, height: stickHeight)
    } else {
        makeIceCreamStick("|  |", space: space, height: stickHeight)
    }
}

makeIceCream(bodyWidth: 12, bodyHeight: 8)
