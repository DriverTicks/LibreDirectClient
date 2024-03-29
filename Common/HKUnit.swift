//
//  HKUnit.swift
//  LibreDirectClient
//
//  Created by Julian Groen on 12/05/2020.
//  Copyright © 2020 Julian Groen. All rights reserved.
//

import HealthKit

extension HKUnit {
    static let milligramsPerDeciliter: HKUnit = {
        HKUnit.gramUnit(with: .milli).unitDivided(by: .literUnit(with: .deci))
    }()

    static let millimolesPerLiter: HKUnit = {
        HKUnit.moleUnit(with: .milli, molarMass: HKUnitMolarMassBloodGlucose).unitDivided(by: .liter())
    }()

    var localizedDescription: String {
        if self == .millimolesPerLiter {
            return LocalizedString("mmol/L", comment: "")
        }
        
        if self == .milligramsPerDeciliter {
            return LocalizedString("mg/dL", comment: "")
        }
        
        return "?"
    }
}
