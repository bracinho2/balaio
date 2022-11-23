import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

abstract class ValueObject {
  String? validator();
}

class Email implements ValueObject {
  final String _value;
  Email(this._value);

  @override
  String? validator() {
    if (_value.isEmpty) return 'Campo esta vazio';
    return null;
  }

  @override
  String toString() => _value;
}

class Cpf implements ValueObject {
  final String _value;

  Cpf(this._value);

  @override
  String? validator() {
    if (_value.isEmpty) return 'Campo esta vazio';
    return null;
  }

  @override
  String toString() => _value;

  String toStringOnlyNumbers() => _value.replaceAll(RegExp(r'[ˆ\d]'), '');
}

class MinhaEntidade {
  DateTime? createdAt;
  Email _email;
  Cpf _cpf;

  Email get email => _email;
  Cpf get cpf => _cpf;

  MinhaEntidade({
    this.createdAt,
    required String email,
    required String cpf,
  })  : _email = Email(email),
        _cpf = Cpf(cpf);

  factory MinhaEntidade.empty() {
    return MinhaEntidade(
      email: '',
      cpf: '',
    );
  }

  static MinhaEntidade fromJson(dynamic data) {
    return MinhaEntidade(
      createdAt:
          data['createdAt'] != null ? DateTime.parse(data['createdAt']) : null,
      email: data['email'],
      cpf: data['cpf'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      if (createdAt != null) 'createdAt': createdAt?.toIso8601String(),
      'email': email.toString(),
      'cpf': cpf.toStringOnlyNumbers(),
    };
  }
}

class MyEditText extends StatelessWidget {
  final String label;
  final String value;
  final void Function(String)? onChanged;
  final String? Function(String?)? validator;
  final List<TextInputFormatter>? inputFormatters;

  const MyEditText({
    Key? key,
    required this.label,
    required this.value,
    this.onChanged,
    this.validator,
    this.inputFormatters,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      initialValue: value,
      validator: validator,
      onChanged: onChanged,
      decoration: InputDecoration(
        labelText: label,
        border: const OutlineInputBorder(),
      ),
      inputFormatters: inputFormatters,
    );
  }
}
