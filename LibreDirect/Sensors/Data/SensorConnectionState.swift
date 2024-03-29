//
//  SensorConnectionState.swift
//  LibreDirectClient
//
//  Created by Reimar Metzen on 22.03.21.
//  Copyright © 2021 Mark Wilson. All rights reserved.
//

import Foundation

public enum SensorConnectionState: String {
    case unassigned = "Unassigned"
    case scanning = "Scanning"
    case disconnected = "Disconnected"
    case connecting = "Connecting"
    case connected = "Connected"
    case notifying = "Notifying"
    case powerOff = "Power Off"
    case unknown = "Unknown"

    init() {
        self = .unknown
    }

    public var description: String {
        return "\(self.rawValue)"
    }
}
