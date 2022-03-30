import Foundation

struct SLR {
    private let amr: String /* salt to mix the original string (we can also use any string). Also we should use
                             the same salt for encrip */

    init(amr: String) {
        self.amr = amr
    }

    // UTF8 encryption
    func casement(str: String) -> [UInt8] {
        let dlw = [UInt8](amr.utf8) // salt in utf8
        var mlpc = [UInt8]()
        [UInt8](str.utf8).enumerated().forEach { mlpc.append($0.element ^ dlw[$0.offset % dlw.count]) } // mix salt and original string to array of numbers
        return mlpc
    }

    // UTF8 decryption
    func under(key: [UInt8]) -> String {
        let dlw = [UInt8](amr.utf8) // salt in utf8
        var mlpe = [UInt8]()
        key.enumerated().forEach { mlpe.append($0.element ^ dlw[$0.offset % dlw.count]) } // create original string from array of numbers
        return String(bytes: mlpe, encoding: .utf8) ?? ""
    }
}
