import Foundation

public func < (lhs: Date, rhs: Date) -> Bool {
  return lhs.timeIntervalSince1970 < rhs.timeIntervalSince1970
}

public func <= (lhs: Date, rhs: Date) -> Bool {
  return lhs.timeIntervalSince1970 <= rhs.timeIntervalSince1970
}

public func >= (lhs: Date, rhs: Date) -> Bool {
  return lhs.timeIntervalSince1970 >= rhs.timeIntervalSince1970
}

public func > (lhs: Date, rhs: Date) -> Bool {
  return lhs.timeIntervalSince1970 > rhs.timeIntervalSince1970
}

// MARK: - Components

public extension Date {
  
  public func components(_ unit: Calendar.Component, retrieval: (DateComponents) -> Int) -> Int {
    let components = Calendar.current.dateComponents([unit], from: self)
    return retrieval(components)
  }
  
  public var second: Int {
    return components(.second) {
      return $0.second!
    }
  }
  
  public var minute: Int {
    return components(.minute) {
      return $0.minute!
    }
  }
  
  public var hour: Int {
    return components(.hour) {
      return $0.hour!
    }
  }
  
  public var day: Int {
    return components(.day) {
      return $0.day!
    }
  }
  
  public var month: Int {
    return components(.month) {
      return $0.month!
    }
  }
  
  public var year: Int {
    return components(.year) {
      return $0.year!
    }
  }
  
  public var weekday: Int {
    return components(.weekday) {
      return $0.weekday!
    }
  }
}
