//
//  UInt16+Helpers.swift
//  Fake-A-Chip
//
//  Created by Mike Hall on 20/05/2023.
//

import Foundation

public extension UInt16 {
    public func highByte() -> UInt8 {
        return UInt8(self / 256)
    }

    public func lowByte() -> UInt8 {
       return UInt8(self - ((self / 256) * 256))
    }

    public func hex() -> String {
        return String(self, radix: 16).padded(size: 4)
    }

    public func bin() -> String {
        return String(self, radix: 2).padded(size: 16)
    }

    public mutating func inc() {
        self = self &+ 1
    }

    public mutating func dec() {
        self = self &- 1
    }
    
    public init(msb: UInt8, lsb: UInt8) {
        self.init(UInt16(UInt16(msb) * UInt16(256)) + UInt16(lsb))
    }
}

public extension Int16 {
    public func highByte() -> UInt8 {
        return UInt8(self / 256)
    }

    public func lowByte() -> UInt8 {
       return UInt8(self - ((self / 256) * 256))
    }

    public func hex() -> String {
        return String(self, radix: 16).padded(size: 4)
    }

    public func bin() -> String {
        return String(self, radix: 2).padded(size: 16)
    }

    public mutating func inc() {
        self = self &+ 1
    }

    public mutating func dec() {
        self = self &- 1
    }
    
    public init(msb: UInt8, lsb: UInt8) {
        self.init(Int16(Int16(msb) * Int16(256)) + Int16(lsb))
    }
}

