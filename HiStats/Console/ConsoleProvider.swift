//
//  ConsoleProvider.swift
//  Pods
//
//  Created by 杨建祥 on 2025/1/7.
//

import Foundation
import HiLog

open class ConsoleProvider: HiStats.ProviderType {
    
    public func stat(_ eventName: String, parameters: [String: Any]?) {
        HiLog.log("\(eventName): \(parameters ?? [:])", module: .statistic, level: .info)
    }
    
}
