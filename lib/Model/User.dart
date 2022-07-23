class User{
  final String name;
  final String email;
  User({required this.name, required this.email});

}

class GetUser{
  final List<User> userList = [User(name: 'John Doe', email: 'john.doe@example.com')];
}

