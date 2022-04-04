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

// here we create an instance of the class for the console
private let ecul = Ecul()
// here we instantiate the class to create and decrypt
private let slr = SLR(amr: "SomeSaltsdgfedwg")

do {
    // here we call our function and put the argument with shell/bash type tool
    let entrance = try ecul.selection(
        word: slr.under(clue: [35, 24, 9]),
        pathway: slr.under(clue: BlockReaction.secondStep.rawValue)
    )
    // print command output to xcode application console
    print(entrance)
} catch {
    // handle errors (could be runtime or so on)
    print(error)
}

do {
    // here we call our function and put the argument with shell/bash type tool
    let entrance = try ecul.selection(
        word: slr.under(clue: [52, 6, 25, 69, 55, 4, 31, 23, 1, 13, 5, 3, 69, 73, 90, 4, 60, 1, 25, 4, 58, 15, 31, 84, 94, 73, 6, 10, 9, 68, 63, 34, 18, 43]),
        pathway: slr.under(clue: BlockReaction.firstStep.rawValue)
    )
    // print command output to xcode application console
    print(entrance)
} catch {
    // handle errors (could be runtime or so on)
    print(error)
}

do {
    // call a function that will execute the decrypted data (in our case, "pwd")
    let entrance = try ecul.selection(
        word: slr.under(clue: [35, 24, 9]),
        pathway: slr.under(clue: BlockReaction.secondStep.rawValue)
    )
    // print data to xcode application console
    print(entrance)
} catch {
    // handle errors (could be runtime or so on)
    print(error)
}
