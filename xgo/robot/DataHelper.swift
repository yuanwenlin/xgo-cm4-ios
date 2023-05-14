//
//  DataHelper.swift
//  xgo
//
//  Created by wenlin.yuan on 2023/4/14.
//

import Foundation



class DataHelper {

    
    class func getSendBytes(id: UInt8, funcName: UInt8, data: [UInt8]) -> String {
        let length: Int8 = Int8(data.count * 2 + 2)
        
        var bytes = [UInt8](repeating: 0, count: data.count + 4)
        bytes[0] = UInt8(id)
        bytes[1] = UInt8(funcName)
        bytes[2] = UInt8(length)
        data.enumerated().forEach { bytes[$0.offset + 3] = $0.element }
        
        var add: UInt8 = 0x00
        for datum in bytes {
            add = add &+ datum
        }
        bytes[bytes.count - 1] = add
        
        let resultString = bytesToHex(bytes)
        return "$\(resultString)#"

    }
    
    class func bytesToHex(_ bytes: [UInt8]) -> String {
        return bytes.map { String(format: "%02X", $0) }.joined()
    }
}

