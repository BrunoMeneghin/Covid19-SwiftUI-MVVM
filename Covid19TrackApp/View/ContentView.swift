//
//  ContentView.swift
//  Covid19TrackApp
//
//  Created by Bruno Meneghin on 01/06/20.
//  Copyright © 2020 Bruno Meneghin. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject private var trackingListVM = TrackingListViewModel()
    
    init() {
        self.trackingListVM.getTrackingListData()
    }
    
    var body: some View {
        NavigationView {
            
            List(self.trackingListVM.trackings, id: \.id) { tracking in
                HStack {
                    Text(tracking.state)
                        .padding()
                        .foregroundColor(Color.white)
                        .background(Color.blue)
                        .cornerRadius(4)
                        .font(.custom("", size: 22))
                    
                     }
                    
                    Spacer()
                
                    VStack() {
                        Text("Cases \(tracking.totalTestResults)")
                            .font(.system(size: 18, weight: .heavy, design: .default))
                            .foregroundColor(Color.black)
                        
                        Text("Deaths  \(tracking.death)")
                            .foregroundColor(Color.pink)
                        
                        Text("Positive \(tracking.positive)")
                            .foregroundColor(Color.gray)
                        
                        Text("Hospital \(tracking.hospitalized)")
                            .foregroundColor(Color.gray)
                        
                        Text("Recoved \(tracking.recovered)")
                                                  .foregroundColor(Color.gray)
                        
                }
            }
                
            .navigationBarTitle("Covid19 Tracking")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
