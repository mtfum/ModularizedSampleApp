//
//  UserCellModel.swift
//  App
//
//  Created by Fumiya Yamanaka on 2017/11/26.
//  Copyright © 2017 mtfum. All rights reserved.
//

import Foundation

protocol UserCellModelType {
  var name: String { get }
  var age: Int { get }
}

struct UserCellModel: UserCellModelType {

  let status: String
  let name: String
  let age: Int

  init(user: User) {

    self.status = user.status
    self.name = user.name
    self.age = user.age
  }
}
