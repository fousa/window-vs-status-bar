//
//  CustomWindowManager.swift
//  Windows
//
//  Created by Jelle Vandebeeck on 13/12/2018.
//  Copyright © 2018 Fousa. All rights reserved.
//

import UIKit

class CustomWindowManager {

    // MARK: - Window

    private var customWindow: CustomWindow? {
        willSet { customWindow?.isHidden = true }
        didSet { customWindow?.isHidden = false }
    }

    func toggleWindow() {
        if customWindow == nil {
            customWindow = CustomWindow(controller: CustomViewController())
        } else {
            customWindow = nil
        }
    }
}
