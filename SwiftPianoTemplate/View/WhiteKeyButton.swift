//
//  WhiteKey.swift
//  SwiftPianoTemplate
//
//  Created by Victor Kachalov on 24.03.18.
//  Copyright © 2018. All rights reserved.
//

import Foundation
import PMSuperButton

final class WhiteKeyButton: KeyButton {
    convenience init(tangent: Tangent) {
        self.init(
            tangent: tangent,
            titleColor: UIColor.black,
            backgroundColor: UIColor.white
        )
        layer.borderColor = UIColor.black.cgColor
        layer.borderWidth = 1.0
    }
}
