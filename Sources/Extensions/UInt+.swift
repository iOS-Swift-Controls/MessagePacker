//
//  UInt+.swift
//  MessagePacker
//
//  Created by hirotaka on 2018/12/17.
//  Copyright © 2018 hiro. All rights reserved.
//

import Foundation

extension UInt: MessagePackable {
    func pack() -> Data {
        return MessagePackType.UnsignedIntegerType.pack(for: self)
    }

    static func unpack(for value: Data) throws -> UInt {
        return try MessagePackType.UnsignedIntegerType.unpack(for: value)
    }
}
