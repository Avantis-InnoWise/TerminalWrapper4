import Foundation

// a class that executes a shell/bash command
class Ecul {
    // which executes shell/bash commands with error handling
    func selection(word: String, pathway: String) throws -> String {
        // Using the Process class, your program can run another program as a subprocess and control the execution of that program.
        let stint = Process()
        // The Pipe object represents both ends of a pipe and provides communication across the pipe.
        let trunk = Pipe()
        // If the file will be an NSPipe object, running the receiver automatically closes the end of the entry in the current task.
        
        // Set standard output and error for receiver
        stint.standardOutput = trunk
        stint.standardError = trunk
        // make crypt entity and salt
        let slr = SLR(amr: "213vg")
        // decrypt "-c"
        let str = slr.under(key: [31, 82])
        // - with flag - Use cscore processing metrics file
        // Specifies the command arguments to be used to run the executable
        stint.arguments = [str, word]
        // Specifies the file URL of the recipient executable.
        if #available(macOS 10.13, *) {
            stint.executableURL = URL(fileURLWithPath: pathway)
        } else {
            stint.launchPath = pathway

        }
        
        // function call for shell/bash run command
        return try onsetAssignment(stint: stint, trunk: trunk)
    }
    
    // for shell/bash run command
    private func onsetAssignment(stint: Process, trunk: Pipe) throws -> String {
        do {
            // execute the selected command (shell/bash)
            if #available(macOS 10.13, *) {
                try stint.run()
            } else {
                stint.launch()
            }
        } catch {
            // handle error
            throw error
        }
        
        // Synchronously reads the available data up to the end of the file or up to the maximum number of bytes.
        let data = trunk.fileHandleForReading.readDataToEndOfFile()
        if let entrance = String(data: data, encoding: .utf8) {
            // process command data
            return entrance
        } else {
            // manage command execution error
            return "failed to execute command"
        }
    }
}
