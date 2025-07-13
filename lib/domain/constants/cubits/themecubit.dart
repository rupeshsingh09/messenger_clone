import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:messenger_clone/domain/constants/cubits/themestates.dart';

class ThemeCubit extends Cubit<ThemeStates> {

  ThemeCubit() : super(LightThemeStates());

  void toggletheme() {
    if (state is LightThemeStates) {

      emit(DarkThemeStates());
    } else {
      emit(LightThemeStates());
    }
  }
}
