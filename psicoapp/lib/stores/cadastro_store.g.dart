// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cadastro_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$CadastroStore on _CadastroStore, Store {
  Computed<File> _$getImageComputed;

  @override
  File get getImage => (_$getImageComputed ??=
          Computed<File>(() => super.getImage, name: '_CadastroStore.getImage'))
      .value;

  final _$_imageAtom = Atom(name: '_CadastroStore._image');

  @override
  File get _image {
    _$_imageAtom.reportRead();
    return super._image;
  }

  @override
  set _image(File value) {
    _$_imageAtom.reportWrite(value, super._image, () {
      super._image = value;
    });
  }

  final _$selectImageAsyncAction = AsyncAction('_CadastroStore.selectImage');

  @override
  Future<dynamic> selectImage() {
    return _$selectImageAsyncAction.run(() => super.selectImage());
  }

  @override
  String toString() {
    return '''
getImage: ${getImage}
    ''';
  }
}
