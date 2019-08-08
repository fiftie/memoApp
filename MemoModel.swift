//
//  MemoModel.swift
//  memoApp
//
//  Created by 五十嵐龍吉 on 2019/08/08.
//  Copyright © 2019 Tatsuyoshi Igarashi. All rights reserved.
//

import Foundation
import RealmSwift

class MemoModel: Object {
	@objc dynamic var memo: String? = nil;
}
