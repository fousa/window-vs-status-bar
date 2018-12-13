//
//  ViewController.swift
//  Windows
//
//  Created by Jelle Vandebeeck on 13/12/2018.
//  Copyright © 2018 Fousa. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // MARK: - Actions

    @IBAction func toggleStatusBarStyle(_ sender: UIButton) {
        if customStatusBarStyle == .default {
            customStatusBarStyle = .lightContent
        } else {
            customStatusBarStyle = .default
        }
    }

    // MARK: - Status Bar

    private var customStatusBarStyle:  UIStatusBarStyle = .`default` {
        didSet {
            setNeedsStatusBarAppearanceUpdate()
        }
    }

    override var preferredStatusBarStyle: UIStatusBarStyle {
        return customStatusBarStyle
    }
}

