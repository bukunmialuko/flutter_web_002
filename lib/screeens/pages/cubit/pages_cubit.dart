import 'package:bloc/bloc.dart';

class PagesCubit extends Cubit<int> {
  PagesCubit() : super(1);

  void selectPage(int page) {
    emit(page);
  }
}
