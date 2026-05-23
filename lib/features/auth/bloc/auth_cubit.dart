import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
part 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(AuthInitial());
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
  Future<void> login({required String email, required String password}) 
  async {
    try{
      emit(AuthLoading());
      await _firebaseAuth.signInWithEmailAndPassword(
        email: email, 
        password: password);
        emit(AuthSuccess());

    }
    on FirebaseAuthException catch(e){
      emit(AuthError(e.message ??"Login Failled"));
    }
  }
  Future<void> signUp({ 
    required String email,
    required String password,
  })async{
    try{
      emit(AuthLoading());
      await _firebaseAuth.createUserWithEmailAndPassword(
        email: email, 
        password: password
        );
        emit(AuthSuccess());
    }
    on FirebaseAuthException 
    catch(e){
      emit(AuthError(e.message?? "SignUp Failled..."));
    }

  }
  Future<void>logOut()async{
    await _firebaseAuth.signOut();
  }
}
