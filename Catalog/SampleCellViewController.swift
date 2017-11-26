//
//  SampleCellViewController.swift
//  Catalog
//
//  Created by Fumiya Yamanaka on 2017/11/26.
//  Copyright © 2017 mtfum. All rights reserved.
//

import UIKit
@testable import App

final class SampleCellViewController: UIViewController {

  fileprivate struct SampleCellModel: UserCellModelType {
    let name: String
    let age: Int
  }

  private lazy var collectionView: UICollectionView = {

    let layout = UICollectionViewFlowLayout()
    layout.minimumLineSpacing = 10
    layout.minimumInteritemSpacing = 10
    layout.sectionInset = .zero
    layout.estimatedItemSize = .init(width: 1, height: 1)

    let collectionView = UICollectionView(frame: view.frame, collectionViewLayout: layout)

    return collectionView
  }()

  fileprivate let models: [SampleCellModel] = [
    .init(name: "A", age: 100),
    .init(name: "B", age: 0),
    .init(name: "C", age: 10),
    .init(name: "D", age: 3),
    .init(name: "", age: 50),
    .init(name: "あああああ", age: 100),
    .init(name: "Lorem ipsum", age: 100),
    .init(name: "Lorem ipsum dolor sit amet", age: 100),
  ]

  override func viewDidLoad() {
    super.viewDidLoad()

    collectionView.backgroundColor = .white
    collectionView.register(UserCell.self, forCellWithReuseIdentifier: "Cell")
    collectionView.dataSource = self

    view.addSubview(collectionView)
  }
}

extension SampleCellViewController: UICollectionViewDataSource {

  func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
    return models.count
  }

  func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {

    let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath) as! UserCell
    cell.setup(cellModel: models[indexPath.item])

    return cell
  }
}
