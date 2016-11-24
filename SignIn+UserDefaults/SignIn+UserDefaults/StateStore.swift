//
//  StateStore.swift
//  SignIn+UserDefaults
//
//  Created by Lubos Ilcik on 24/11/2016.
//  Copyright © 2016 Touch4IT. All rights reserved.
//

import Foundation

struct StateStore {
    private let isSignedInKey = "isSignedIn"
    var isSignedIn: Bool {
        get {
            let defaults = UserDefaults.standard
            return defaults.bool(forKey: isSignedInKey)
        }
        set {
            let defaults = UserDefaults.standard
            defaults.set(newValue, forKey: isSignedInKey)
            defaults.synchronize()
        }
    }
}
