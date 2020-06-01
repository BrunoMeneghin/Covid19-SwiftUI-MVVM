//
//  WebService.swift
//  Covid19TrackApp
//
//  Created by Bruno Meneghin on 01/06/20.
//  Copyright © 2020 Bruno Meneghin. All rights reserved.
//

import Foundation

class WebService {
    
    func getCovidTrackingResult(completion: @escaping ([Tracking]?) -> Void) {
        
        guard let url = URL(string: "https://covidtracking.com/api/v1/states/current.json") else {
            fatalError("Invalid URL")
        }
        
        URLSession.shared.dataTask(with: url) { data, response, error in
            
            guard let data = data, error == nil else {
                return completion(nil)
            }
            
            let trackingListData = try? JSONDecoder().decode([Tracking].self, from: data)
            completion(trackingListData)
            
        }.resume()
    }
}
