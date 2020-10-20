import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

part 'login_controller.g.dart';

@Injectable()
class LoginController = _LoginControllerBase with _$LoginController;

abstract class _LoginControllerBase with Store {
  @observable
  int value = 0;

  @observable
  String email;

  @observable
  String password;

  @observable
  bool isFilled = false;

  @observable
  bool isVisible = false;

  @action
  void setEmail(value){
    email = value;
    isFilled = validate();
  }
  
  @action
  void setPassword(value){
    password = value;
    isFilled = validate();
  }

  @action
  bool validate(){
    return email.isNotEmpty && password.isNotEmpty;
  }

  @action
  void setVisibility() => isVisible = !isVisible;

  @action
  void increment() {
    value++;
  }
}
