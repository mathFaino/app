// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'consulta_list_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$ConsultaListStore on _ConsultaListStore, Store {
  Computed<Consulta> _$consultaComputed;

  @override
  Consulta get consulta =>
      (_$consultaComputed ??= Computed<Consulta>(() => super.consulta,
              name: '_ConsultaListStore.consulta'))
          .value;

  final _$_consultaAtom = Atom(name: '_ConsultaListStore._consulta');

  @override
  Consulta get _consulta {
    _$_consultaAtom.reportRead();
    return super._consulta;
  }

  @override
  set _consulta(Consulta value) {
    _$_consultaAtom.reportWrite(value, super._consulta, () {
      super._consulta = value;
    });
  }

  final _$_ConsultaListStoreActionController =
      ActionController(name: '_ConsultaListStore');

  @override
  dynamic listConsultas() {
    final _$actionInfo = _$_ConsultaListStoreActionController.startAction(
        name: '_ConsultaListStore.listConsultas');
    try {
      return super.listConsultas();
    } finally {
      _$_ConsultaListStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
consulta: ${consulta}
    ''';
  }
}
