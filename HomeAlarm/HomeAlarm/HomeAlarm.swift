//
//  HomeAlarm.swift
//  HomeAlarm
//
//  Created by Lubos Ilcik on 20/10/2016.
//  Copyright © 2016 Touch4IT. All rights reserved.
//

import Foundation

class HomeAlarm {
    private static let code = "12345678"
    
    enum State {
        case armed, disarmed
    }
    
    // state
    var state = State.disarmed
    
    // events
    func enter(code: String) {
    
        guard code == HomeAlarm.code else {
            onError?("Incorrect Code")
            return
        }
        
        switch state {
        case .armed:
            state = .disarmed
            onDisarmed?()
        case .disarmed:
            state = .armed
            onArmed?()
        }
    }
    
    // actions
    typealias Error = (String) -> Void
    typealias Action = () -> Void
    
    var onError: Error?
    var onDisarmed: Action?
    var onArmed: Action?
    
    
    
    
    
    
    
    

}
