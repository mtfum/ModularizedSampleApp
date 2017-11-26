//
//  ViewController.swift
//  Catalog
//
//  Created by Fumiya Yamanaka on 2017/11/26.
//  Copyright © 2017 mtfum. All rights reserved.
//

import UIKit
import App

class ViewController: UIViewController {

  @IBOutlet weak var tableView: UITableView!

  let items: [UIViewController] = [
    AppViewController(),
    SampleCellViewController()
  ]

  override func viewDidLoad() {
    super.viewDidLoad()
  }
}

extension ViewController : UITableViewDelegate, UITableViewDataSource {

  @objc func numberOfSections(in tableView: UITableView) -> Int {
    return 1
  }

  @objc func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return items.count
  }

  @objc func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

    let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
    cell.textLabel?.text = String(describing: type(of: items[indexPath.item].self))
    
    return cell
  }

  func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    self.navigationController?.pushViewController(items[indexPath.item], animated: true)
  }
}

