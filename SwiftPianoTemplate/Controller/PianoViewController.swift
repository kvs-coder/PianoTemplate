//
//  PianoViewController.swift
//  SwiftPianoTemplate
//
//  Created by Victor Kachalov on 01.03.18.
//  Copyright © 2018. All rights reserved.
//

import UIKit

final class PianoViewController: UIViewController {
    private let mainView = MainView()

    unowned var c1Button: WhiteKeyButton { return mainView.keyC }
    unowned var c1sButton: BlackKeyButton { return mainView.keyBlackC }
    unowned var d1Button: WhiteKeyButton { return mainView.keyD }
    unowned var d1sButton: BlackKeyButton { return mainView.keyBlackD }
    unowned var e1Button: WhiteKeyButton { return mainView.keyE }
    unowned var f1Button: WhiteKeyButton { return mainView.keyF }
    unowned var f1sButton: BlackKeyButton { return mainView.keyBlackF }
    unowned var g1Button: WhiteKeyButton { return mainView.keyG }
    unowned var g1sButton: BlackKeyButton { return mainView.keyBlackG }
    unowned var a1Button: WhiteKeyButton { return mainView.keyA }
    unowned var a1sButton: BlackKeyButton { return mainView.keyBlackA }
    unowned var b1Button: WhiteKeyButton { return mainView.keyB }
    unowned var c2Button: WhiteKeyButton { return mainView.keyCSecond }

    override public func loadView() {
        super.view = mainView
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        setButtons()
    }
}

extension PianoViewController {
    func setButtons() {
        let player = Player()
        c1Button.keyPressed(player, tangent: .c1)
        c1sButton.keyPressed(player, tangent: .c1s)
        d1Button.keyPressed(player, tangent: .d1)
        d1sButton.keyPressed(player, tangent: .d1s)
        e1Button.keyPressed(player, tangent: .e1)
        f1Button.keyPressed(player, tangent: .f1)
        f1sButton.keyPressed(player, tangent: .f1s)
        g1Button.keyPressed(player, tangent: .g1)
        g1sButton.keyPressed(player, tangent: .g1s)
        a1Button.keyPressed(player, tangent: .a1)
        a1sButton.keyPressed(player, tangent: .a1s)
        b1Button.keyPressed(player, tangent: .b1)
        c2Button.keyPressed(player, tangent: .c2)
    }
}
