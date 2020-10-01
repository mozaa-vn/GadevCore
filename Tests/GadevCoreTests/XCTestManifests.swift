import XCTest

#if !canImport(ObjectiveC)
public func allTests() -> [XCTestCaseEntry] {
    return [
    testCase(GadevColorTests.allTests),
    testCase(GadevNetworkingTests.allTests)
    ]
}
#endif
