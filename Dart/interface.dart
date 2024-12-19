abstract class login{
  username();
  password();
}
class loginusecase implements login{
  @override
  username(){
    print('username');
  }
  @override
  password() {
    print('Password');
  }
}
void main(){
  loginusecase usecase=loginusecase();
  usecase.username();
  usecase.password();
}