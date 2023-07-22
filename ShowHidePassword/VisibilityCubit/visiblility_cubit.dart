import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:untitled/Screens/show_hide_password.dart';

part 'visiblility_state.dart';

class VisiblilityCubit extends Cubit<VisiblilityState> {
  VisiblilityCubit() : super(Visiblility_On_Off());
  bool secure = true;

  ShowHideSwitch(){
    secure=!secure;
    emit(Visiblility_On_Off());
  }
}
