//
//  Bundle.swift
//  Flyer iOS
//
//  Created by Szymon Lorenz on 14/1/21.
//  Copyright © 2021 Szymon Lorenz. All rights reserved.
//

import Foundation

extension Bundle {
    var applicationName: String {
        return Bundle.main.infoDictionary?["CFBundleName"] as? String ?? ""
    }

    var bundleVersion: String? {
        return Bundle.main.infoDictionary?["CFBundleShortVersionString"] as? String
    }
    
    var bundleApplicationId: String? {
        return Bundle.main.infoDictionary?["ApplicationId"] as? String
    }
}
