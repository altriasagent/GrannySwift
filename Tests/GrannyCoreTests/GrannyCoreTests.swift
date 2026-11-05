import Testing
@testable import GrannyCore

@Test func versionIsSet() {
    #expect(!GrannyCore.version.isEmpty)
}
