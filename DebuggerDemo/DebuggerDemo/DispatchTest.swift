//
//  DispatchTest.swift
//  DebuggerDemo
//
//  Created by Lubos Ilcik on 06/12/15.
//  Copyright © 2015 Touch4IT. All rights reserved.
//

import Foundation

func dispatch_onto_queue(_ queue: DispatchQueue, a: Int?) {
    queue.async {
        print("Hello \(a!)")
    }
}
