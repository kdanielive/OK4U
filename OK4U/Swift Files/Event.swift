//
//  Event.swift
//  OK4U
//
//  Created by Daniel Kim on 10/3/19.
//  Copyright © 2019 Daniel Kim. All rights reserved.
//

import Foundation

class Event {
    
    let name: String
    let shortDescription: String
    let startDate: String
    let endDate: String
    let startTime: String
    let endTime: String
    let fullTimeDetail: String
    var events = [Event]()

    init(name:String, shortDescription:String, startDate:String, endDate:String, startTime:String, endTime:String) {
        self.name = name
        self.shortDescription = shortDescription
        self.startDate = startDate
        self.endDate = endDate
        self.startTime = startTime
        self.endTime = endTime
        self.fullTimeDetail = startDate+startTime+"-"+endDate+endTime
    }
    
    func setUpMockEvents() {
        events.append(Event(name: "옼식당", shortDescription: "밥먹자", startDate: "20191205", endDate: "20191205", startTime: "19:00", endTime: "21:00"))
        events.append(Event(name: "옼식당", shortDescription: "밥먹자", startDate: "20191205", endDate: "20191205", startTime: "19:00", endTime: "21:00"))
    }

}
