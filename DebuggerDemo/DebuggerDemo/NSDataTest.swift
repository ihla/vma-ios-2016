//
//  NSDataTest.swift
//  DebuggerDemo
//
//  Created by Lubos Ilcik on 06/12/15.
//  Copyright © 2015 Touch4IT. All rights reserved.
//

import Foundation

func readPage() {
    let page = try? Data(contentsOf: URL(string: "https://mynameisnoname.com")!)
    let chars = ((page as NSData?)?.bytes)!
    
}
