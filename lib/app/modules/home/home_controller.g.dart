// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$HomeController on _HomeControllerBase, Store {
  final _$selectedIndexAtom = Atom(name: '_HomeControllerBase.selectedIndex');

  @override
  int get selectedIndex {
    _$selectedIndexAtom.reportRead();
    return super.selectedIndex;
  }

  @override
  set selectedIndex(int value) {
    _$selectedIndexAtom.reportWrite(value, super.selectedIndex, () {
      super.selectedIndex = value;
    });
  }

  final _$iconsAtom = Atom(name: '_HomeControllerBase.icons');

  @override
  List<IconData> get icons {
    _$iconsAtom.reportRead();
    return super.icons;
  }

  @override
  set icons(List<IconData> value) {
    _$iconsAtom.reportWrite(value, super.icons, () {
      super.icons = value;
    });
  }

  @override
  String toString() {
    return '''
selectedIndex: ${selectedIndex},
icons: ${icons}
    ''';
  }
}
