import Foundation

precedencegroup OptAssign {
    assignment: true
}
infix operator ?= : OptAssign

public func ?=<T>(left: inout T, right: T?) {
  guard let value = right else { return }
  left = value
}

public func ?=<T>(left: inout T?, right: T?) {
  guard let value = right else { return }
  left = value
}
