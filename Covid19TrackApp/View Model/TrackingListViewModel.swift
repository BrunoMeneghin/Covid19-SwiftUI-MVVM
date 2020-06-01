//
//  TrackingListViewModel.swift
//  Covid19TrackApp
//
//  Created by Bruno Meneghin on 01/06/20.
//  Copyright © 2020 Bruno Meneghin. All rights reserved.
//

import Foundation

class TrackingListViewModel: ObservableObject {
    
    @Published var trackings = [TrackingViewModel]()
    
    func getTrackingListData() {
        
        WebService().getCovidTrackingResult { trackingListData in
            
            if let trackingListData = trackingListData {
                DispatchQueue.main.async {
                    self.trackings = trackingListData.map(TrackingViewModel.init)
                }
            }
        }
        
    }
    
    
}
