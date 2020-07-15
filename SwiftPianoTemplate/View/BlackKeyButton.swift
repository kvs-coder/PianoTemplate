//
//  BlackKeyButton.swift
//  SwiftPianoTemplate
//
//  Created by Victor Kachalov on 24.03.18.
//  Copyright © 2018. All rights reserved.
//

import Foundation
import PMSuperButton

final class BlackKeyButton: KeyButton {
    convenience init(tangent: Tangent) {
        self.init(
            tangent: tangent,
            titleColor: UIColor.white,
            backgroundColor: UIColor.black
        )
    }
}
