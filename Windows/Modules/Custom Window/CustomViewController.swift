//
//  CustomViewController.swift
//  Windows
//
//  Created by Jelle Vandebeeck on 13/12/2018.
//  Copyright © 2018 Fousa. All rights reserved.
//

import UIKit

class CustomViewController: UIViewController {

    // MARK: - Controller flow

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .clear

        // Add the content controller.
        addContentView()
        addTitleLabel()
    }

    // MARK: - UI

    private lazy var customView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = UIColor(named: "Color")
        return view
    }()

    private func addContentView() {
        view.addSubview(customView)
        NSLayoutConstraint.activate([
            customView.topAnchor.constraint(greaterThanOrEqualTo: view.topAnchor, constant: 16.0),
            customView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16.0),
            customView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -16.0),
            customView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16.0)
        ])
    }

    private lazy var label: UILabel = {
        let label = UILabel()
        label.textColor = .white
        label.font = UIFont.systemFont(ofSize: 16.0, weight: .thin)
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Hi! 👋"
        return label
    }()

    private func addTitleLabel() {
        view.addSubview(label)
        NSLayoutConstraint.activate([
            label.topAnchor.constraint(equalTo: customView.topAnchor, constant: 16.0),
            label.trailingAnchor.constraint(equalTo: customView.trailingAnchor, constant: -16.0),
            label.bottomAnchor.constraint(equalTo: customView.bottomAnchor, constant: -16.0),
            label.leadingAnchor.constraint(equalTo: customView.leadingAnchor, constant: 16.0)
        ])
    }
}
