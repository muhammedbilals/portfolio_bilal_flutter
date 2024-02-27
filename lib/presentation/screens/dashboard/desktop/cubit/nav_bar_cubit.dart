import 'package:bloc/bloc.dart';

class NavBarCubit extends Cubit<int> {
  NavBarCubit() : super(0);

  changeSelectedIndex(newIndex) => emit(newIndex);

}
