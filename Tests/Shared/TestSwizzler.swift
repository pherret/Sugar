import Foundation
import XCTest
import Sugar

class Swizzled: NSObject {

  dynamic func method() -> Bool {
    return true
  }
}

extension Swizzled {
  func swizzled_method() -> Bool {
    return false
  }
}

class SwizzleTests: XCTestCase {

  func testSwizzleInstanceMethod() {
    Swizzler.swizzle("method", cls: Swizzled.self)
    let object = Swizzled()
    XCTAssertFalse(object.method())
  }
}

