import Foundation

// enumeration of the command type used for filePath
enum BlockReaction {
    case firstStep, secondStep
    
    var rawValue: [UInt8] {
        switch self {
        case .firstStep: return [124, 13, 4, 11, 124, 3, 13, 7, 27]
        case .secondStep: return [124, 13, 4, 11, 124, 27, 31, 28]
        }
    }
}
