//
//  UserCell.swift
//  App
//
//  Created by Fumiya Yamanaka on 2017/11/26.
//  Copyright © 2017 mtfum. All rights reserved.
//

import UIKit

final class UserCell: UICollectionViewCell {

  private let nameLabel = UILabel()
  private let ageLabel = UILabel()

  override init(frame: CGRect) {
    super.init(frame: frame)

    backgroundColor = .lightGray

    contentView.translatesAutoresizingMaskIntoConstraints = false
    nameLabel.translatesAutoresizingMaskIntoConstraints = false
    ageLabel.translatesAutoresizingMaskIntoConstraints = false

    nameLabel.numberOfLines = 0
    nameLabel.preferredMaxLayoutWidth = UIScreen.main.bounds.width

    nameLabel.textAlignment = .center
    ageLabel.textAlignment = .center

    contentView.addSubview(nameLabel)
    contentView.addSubview(ageLabel)

    let marginGuide = contentView.layoutMarginsGuide

    [
      nameLabel.topAnchor.constraint(equalTo: marginGuide.topAnchor, constant: 10),
      nameLabel.leadingAnchor.constraint(equalTo: marginGuide.leadingAnchor),
      nameLabel.trailingAnchor.constraint(equalTo: marginGuide.trailingAnchor),
      ageLabel.topAnchor.constraint(equalTo: nameLabel.bottomAnchor, constant: 10),
      ageLabel.leadingAnchor.constraint(equalTo: marginGuide.leadingAnchor),
      ageLabel.trailingAnchor.constraint(equalTo: marginGuide.trailingAnchor),
      ageLabel.bottomAnchor.constraint(equalTo: marginGuide.bottomAnchor, constant: -10)
      ]
      .forEach { $0.isActive = true }
  }

  required init?(coder aDecoder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }

  func setup(cellModel: UserCellModelType) {
    nameLabel.text = cellModel.name
    ageLabel.text = String(cellModel.age)
  }
}
