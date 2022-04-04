import Foundation

struct SLR {
    private let amr: String
    // salt to mix the original string (we can also use any string). Also we should use the same salt for encrip
    
    init(amr: String) {
        self.amr = amr
    }

    // encryption
    func casement(string: String) -> [UInt8] {
        var mlpc = [UInt8]()
        let dlw = [UInt8](amr.utf8) // salt in utf8
        [UInt8](string.utf8).enumerated().forEach {
            mlpc.append($0.element ^ dlw[$0.offset % dlw.count])
        } // mix salt and original string to array of numbers
        return mlpc
    }

    // decryption
    func under(clue: [UInt8]) -> String {
        var mlpe = [UInt8]()
        let dlw = [UInt8](amr.utf8) // salt in utf8
        clue.enumerated().forEach {
            mlpe.append($0.element ^ dlw[$0.offset % dlw.count])
        } // create original string from array of numbers
        return String(bytes: mlpe, encoding: .utf8) ?? ""
    }
}
