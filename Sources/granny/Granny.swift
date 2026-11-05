import ArgumentParser
import GrannyCore

@main
struct Granny: ParsableCommand {
    static let configuration = CommandConfiguration(
        commandName: "granny",
        abstract: "Placeholder command for the GrannySwift package.",
        version: GrannyCore.version
    )

    func run() {
        print("granny \(GrannyCore.version)")
    }
}
