public enum Result<T, Error: Swift.Error> {
  case success(T)
  case failure(Error)
}
