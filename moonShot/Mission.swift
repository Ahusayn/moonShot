//
//  Mission.swift
//  moonShot
//
//  Created by mac on 23/09/2024.
//

import Foundation


struct Mission: Codable, Identifiable {
    
    struct CrowRole: Codable {
        let name: String
        let role: String
    }

    let id: Int
    let launchDate: Date?
    let crew: [CrowRole]
    let description: String
    
    var displayName: String {
        "Apollo \(id)"
    }
    
    var image: String {
        "apollo\(id)"
    }
    
    var formattedLaunchDate: String {
        launchDate?.formatted(date: .abbreviated, time: .omitted) ?? "N/A"
    }
}
