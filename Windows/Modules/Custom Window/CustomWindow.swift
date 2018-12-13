//
//  CustomWindow.swift
//  Windows
//
//  Created by Jelle Vandebeeck on 13/12/2018.
//  Copyright © 2018 Fousa. All rights reserved.
//

import UIKit

class CustomWindow: UIWindow {

    // MARK: - Init

    init(controller: UIViewController) {
        super.init(frame: UIScreen.main.bounds)
        self.rootViewController = controller
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    // MARK: - Touches

    override func hitTest(_ point: CGPoint, with event: UIEvent?) -> UIView? {
        // We want to pass the view when this view isn't the view of the `contentViewController` of this window. The
        // reason we are doing this is because we want to allow touches in the window that is presented below this
        // window.
        guard
            let view = super.hitTest(point, with: event),
            view != rootViewController?.view else { return nil }
        return view
    }
}
