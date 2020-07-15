//
//  KeyButton.swift
//  SwiftPianoTemplate
//
//  Created by Victor Kachalov on 15.07.20.
//  Copyright © 2020. All rights reserved.
//

import Foundation
import PMSuperButton

class KeyButton: PMSuperButton {
    convenience init(
        tangent: Tangent,
        titleColor: UIColor,
        backgroundColor: UIColor
    ) {
        self.init(frame: .zero)
        ripple = true
        rippleColor = UIColor(
            red: 220/255,
            green: 220/255,
            blue: 220/255,
            alpha: 1
        )
        rippleSpeed = 2
        titleLabel?.font = UIFont(name: "AvenirNext-Regular", size: 17.0)
        setTitle(tangent.rawValue, for: .normal)
        setTitleColor(titleColor, for: .normal)
        contentVerticalAlignment = .bottom
        self.backgroundColor = backgroundColor
    }
}

extension KeyButton {
    func keyPressed(_ player: Player, tangent: Tangent) {
        touchUpInside {
            player.play(tangent: tangent)
        }
    }
}
