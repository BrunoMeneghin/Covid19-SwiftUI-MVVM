//
//  Tracking.swift
//  Covid19TrackApp
//
//  Created by Bruno Meneghin on 01/06/20.
//  Copyright © 2020 Bruno Meneghin. All rights reserved.
//

import Foundation

struct Tracking: Decodable {
    
    let state: String
    let totalTestResults: Int
    let positive: Int
    let death: Int
    let hospitalized: Int?
    let recovered: Int?
}
