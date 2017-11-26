//
//  AppViewController.swift
//  App
//
//  Created by Fumiya Yamanaka on 2017/11/26.
//  Copyright © 2017 mtfum. All rights reserved.
//

import UIKit

public final class AppViewController: UIViewController {

  public override func viewDidLoad() {
    super.viewDidLoad()

    view.backgroundColor = .white

    let label = UILabel()
    label.text = "This is AppViewController in App Module."
    label.translatesAutoresizingMaskIntoConstraints = false
    view.addSubview(label)

    [
      label.centerXAnchor.constraint(equalTo: view.centerXAnchor),
      label.centerYAnchor.constraint(equalTo: view.centerYAnchor)
      ]
      .forEach { $0.isActive = true }

  }
}
