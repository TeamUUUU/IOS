//
//  Helpers.swift
//  keep4u-IOS
//
//  Created by Дюмин Алексей on 06/11/2018.
//  Copyright © 2018 TeamUUUU. All rights reserved.
//

import UIKit

extension String
{
    var localized: String
    {
        return NSLocalizedString(self, tableName: nil, bundle: Bundle.main, value: "", comment: "")
    }
}
