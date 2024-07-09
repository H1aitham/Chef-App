import 'package:bloc/bloc.dart';
import 'package:chef_app/core/database/cache/cache_helper.dart';
import 'package:chef_app/core/services/services_locator.dart';
import 'package:meta/meta.dart';

part 'global_state.dart';

class GlobalCubit extends Cubit<GlobalState> {
  GlobalCubit() : super(GlobalInitial());
  // to make togle two things use bool
  // bool isArabic = false;
  String langcode = 'ar';
//receive the languahe through  changeLange(String codeLang)
  void changeLange(String codeLang) async {
    emit(ChangeLangLoading());
    // isArabic = !isArabic;
    langcode = codeLang;

    //storge the code to ar and en in cache
    await sl<CacheHelper>().cacheLanguage(codeLang);
    emit(ChangeLangSucess());
  }

  void getCacheLang() {
    emit(ChangeLangLoading());
    final cacheLang = sl<CacheHelper>().getCachedLanguage();
    langcode = cacheLang;               
    emit(ChangeLangSucess());
  }

  // void changeLangeTow() {
  //   emit(ChangeLangLoading());

  //   langcode = 'ar' ;
  //   emit(ChangeLangSucess());
  // }
}
