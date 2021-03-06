//
//  TrackingViewModel.swift
//  Covid19TrackApp
//
//  Created by Bruno Meneghin on 01/06/20.
//  Copyright © 2020 Bruno Meneghin. All rights reserved.
//

import Foundation

class TrackingViewModel {
    
    var tracking: Tracking
    
    init(tracking: Tracking) {
        self.tracking = tracking
    }
    
    let id: UUID = UUID()
    
    var state: String {
        return self.tracking.state
    }
    
    var totalTestResults: Int {
        return self.tracking.totalTestResults
    }
    
    var positive: Int {
        return self.tracking.positive
    }
    
    var death: Int {
        return self.tracking.death
    }
    
    var hospitalized: Int {
        return self.tracking.hospitalized ?? 0
    }
    
    var recovered: Int {
        return self.tracking.recovered ?? 0
    }

}
