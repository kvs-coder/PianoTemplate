//
//  MainView.swift
//  SwiftPiano
//
//  Created by Victor Kachalov on 01.03.18.
//  Copyright © 2018. All rights reserved.
//

import UIKit
import SnapKit

class MainView: UIView {
    // MARK: 1 - White Keys
    let keyC = WhiteKeyButton(tangent: .c1)
    let keyD = WhiteKeyButton(tangent: .d1)
    let keyE = WhiteKeyButton(tangent: .e1)
    let keyF = WhiteKeyButton(tangent: .f1)
    let keyG = WhiteKeyButton(tangent: .g1)
    let keyA = WhiteKeyButton(tangent: .a1)
    let keyB = WhiteKeyButton(tangent: .b1)
    let keyCSecond = WhiteKeyButton(tangent: .c2)
    // MARK: 2 - Black Keys
    let keyBlackC = BlackKeyButton(tangent: .c1s)
    let keyBlackD = BlackKeyButton(tangent: .d1s)
    let keyBlackF = BlackKeyButton(tangent: .f1s)
    let keyBlackG = BlackKeyButton(tangent: .g1s)
    let keyBlackA = BlackKeyButton(tangent: .a1s)

    convenience init() {
        self.init(frame: .zero)
        backgroundColor = .gray
        addSubview(keyC)
        addSubview(keyD)
        addSubview(keyE)
        addSubview(keyF)
        addSubview(keyG)
        addSubview(keyA)
        addSubview(keyB)
        addSubview(keyCSecond)
        addSubview(keyBlackC)
        addSubview(keyBlackD)
        addSubview(keyBlackF)
        addSubview(keyBlackG)
        addSubview(keyBlackA)
        setupWhiteKeysConstraints()
        setupBlackKeysConstraints()
    }
    // MARK: 3 - Constraints
    private func setupWhiteKeysConstraints() {
        let whiteKeyCount = 8
        keyC.snp.makeConstraints { (make) in
            make.top.left.bottom.equalToSuperview()
            make.width.equalTo(self.snp.width).dividedBy(whiteKeyCount)
        }
        keyD.snp.makeConstraints { (make) in
            make.top.bottom.equalToSuperview()
            make.left.equalTo(keyC.snp.right)
            make.width.equalTo(self.snp.width).dividedBy(whiteKeyCount)
        }
        keyE.snp.makeConstraints { (make) in
            make.top.bottom.equalToSuperview()
            make.left.equalTo(keyD.snp.right)
            make.width.equalTo(self.snp.width).dividedBy(whiteKeyCount)
        }
        keyF.snp.makeConstraints { (make) in
            make.top.bottom.equalToSuperview()
            make.left.equalTo(keyE.snp.right)
            make.width.equalTo(self.snp.width).dividedBy(whiteKeyCount)
        }
        keyG.snp.makeConstraints { (make) in
            make.top.bottom.equalToSuperview()
            make.left.equalTo(keyF.snp.right)
            make.width.equalTo(self.snp.width).dividedBy(whiteKeyCount)
        }
        keyA.snp.makeConstraints { (make) in
            make.top.bottom.equalToSuperview()
            make.left.equalTo(keyG.snp.right)
            make.width.equalTo(self.snp.width).dividedBy(whiteKeyCount)
        }
        keyB.snp.makeConstraints { (make) in
            make.top.bottom.equalToSuperview()
            make.left.equalTo(keyA.snp.right)
            make.width.equalTo(self.snp.width).dividedBy(whiteKeyCount)
        }
        keyCSecond.snp.makeConstraints { (make) in
            make.top.right.bottom.equalToSuperview()
            make.width.equalTo(self.snp.width).dividedBy(whiteKeyCount)
        }
    }
    private func setupBlackKeysConstraints() {
        let whiteKeySpace = 2
        keyBlackC.snp.makeConstraints { (make) in
            make.top.equalToSuperview()
            make.centerX.equalTo(keyC.snp.right)
            make.width.equalTo(keyC.snp.width).dividedBy(whiteKeySpace)
            make.height.equalTo(keyC.snp.height).dividedBy(whiteKeySpace)
        }
        keyBlackD.snp.makeConstraints { (make) in
            make.top.equalToSuperview()
            make.centerX.equalTo(keyD.snp.right)
            make.width.equalTo(keyD.snp.width).dividedBy(whiteKeySpace)
            make.height.equalTo(keyD.snp.height).dividedBy(whiteKeySpace)
        }
        keyBlackF.snp.makeConstraints { (make) in
            make.top.equalToSuperview()
            make.centerX.equalTo(keyF.snp.right)
            make.width.equalTo(keyF.snp.width).dividedBy(whiteKeySpace)
            make.height.equalTo(keyF.snp.height).dividedBy(whiteKeySpace)
        }
        keyBlackG.snp.makeConstraints { (make) in
            make.top.equalToSuperview()
            make.centerX.equalTo(keyG.snp.right)
            make.width.equalTo(keyG.snp.width).dividedBy(whiteKeySpace)
            make.height.equalTo(keyG.snp.height).dividedBy(whiteKeySpace)
        }
        keyBlackA.snp.makeConstraints { (make) in
            make.top.equalToSuperview()
            make.centerX.equalTo(keyA.snp.right)
            make.width.equalTo(keyA.snp.width).dividedBy(whiteKeySpace)
            make.height.equalTo(keyA.snp.height).dividedBy(whiteKeySpace)
        }
    }
}
