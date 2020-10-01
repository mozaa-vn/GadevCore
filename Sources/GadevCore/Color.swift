//
//  Color.swift
//  GadevCore
//
//  Created by Nguyễn Ý on 10/1/20.
//
import UIKit

extension GadevCore {
    
    public class Color {
        
        /// Convert mã màu từ hex 6 số sang  UIColor object
        /// - Warming: Ký tự '#' sẽ bị loại bỏ trước khi bắt đầu convert mã màu
        /// - Parameters:
        ///   - hexString: mã màu kiểu hex 6 số
        ///   - alpha: có value từ 0.0 đến 1.0
        /// - Returns: Trả về một UIColor được định nghĩa theo tham số `hexString`
        internal class func fromHexString(_ hexString: String, alpha: CGFloat = 1.0) -> UIColor {
            let r, g, b: CGFloat
            let offset = hexString.hasPrefix("#") ? 1 : 0
            let start = hexString.index(hexString.startIndex, offsetBy: offset)
            let hexColor = String(hexString[start...])
            let scanner = Scanner(string: hexColor)
            var hexNumber: UInt64 = 0
            if scanner.scanHexInt64(&hexNumber) {
                r = CGFloat((hexNumber & 0xff0000) >> 16) / 255
                g = CGFloat((hexNumber & 0x00ff00) >> 8) / 255
                b = CGFloat(hexNumber & 0x0000ff) / 255
                return UIColor(red: r, green: g, blue: b, alpha: alpha)
            }
            return UIColor(red: 0, green: 0, blue: 0, alpha: alpha)
        }
        
        /// Trả về 1 object `UIColor` màu xanh lục
        public static var frameworkColor: UIColor {
            return self.fromHexString("006736")
        }
    }
    
}

