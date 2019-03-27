import 'package:mobx/mobx.dart';

//Include part file
part 'user_info.g.dart';

class UserInfo = UserInfoBase with _$UserInfo;

abstract class UserInfoBase implements Store {
  @observable
  String firstName;

  @observable
  String lastName;

  @observable
  String email;

  @computed
  String get fullName => '$firstName $lastName';
}