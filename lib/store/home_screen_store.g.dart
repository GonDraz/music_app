// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_screen_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$HomeScreenStore on _HomeScreenStore, Store {
  late final _$dataHomeScreenAtom =
      Atom(name: '_HomeScreenStore.dataHomeScreen', context: context);

  @override
  Data? get dataHomeScreen {
    _$dataHomeScreenAtom.reportRead();
    return super.dataHomeScreen;
  }

  @override
  set dataHomeScreen(Data? value) {
    _$dataHomeScreenAtom.reportWrite(value, super.dataHomeScreen, () {
      super.dataHomeScreen = value;
    });
  }

  late final _$getApiAsyncAction =
      AsyncAction('_HomeScreenStore.getApi', context: context);

  @override
  Future<dynamic> getApi() {
    return _$getApiAsyncAction.run(() => super.getApi());
  }

  @override
  String toString() {
    return '''
dataHomeScreen: ${dataHomeScreen}
    ''';
  }
}
