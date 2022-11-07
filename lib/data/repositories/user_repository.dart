class UserRepository {
  static UserRepository? _instanceUserRepository;

  UserRepository._();

  static UserRepository getInstance() {
    _instanceUserRepository ??= UserRepository._();
    return _instanceUserRepository!;
  }
}
