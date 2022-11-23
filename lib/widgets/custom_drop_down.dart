import 'package:flutter/material.dart';

class CustomDropDownWidget<T> extends StatelessWidget {
  final String label;
  final T? value;
  final Function(T?) onChanged;
  final String? Function(T?)? validator;
  final List<DropdownMenuItem<T>> items;

  const CustomDropDownWidget({
    Key? key,
    this.value,
    required this.onChanged,
    required this.label,
    required this.items,
    this.validator,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<T>(
      icon: Padding(
        padding: const EdgeInsets.only(
          right: 20,
        ),
        child: Icon(
          Icons.arrow_downward_rounded,
          color: Theme.of(context).primaryColor,
        ),
      ),
      validator: validator,
      decoration: const InputDecoration(
          prefixIcon: SizedBox(
            height: 64,
            width: 64,
            child: Icon(
              Icons.pin_drop_outlined,
            ),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(5),
            ),
          ),
          filled: false,
          label: Text('Select your Country'),
          contentPadding: EdgeInsets.all(0)),
      isExpanded: true,
      items: items,
      value: value,
      onChanged: onChanged,
    );
  }
}

//Como chamar
// ignore: must_be_immutable
class CustomDropDown extends StatelessWidget {
  CustomDropDown({super.key});

  final _phoneController = TextEditingController();
  Country? selectedCountry;

  final List<Country> countries = [
    Country(
      name: "Brazil",
      flag: "🇧🇷",
      code: "BR",
      dialCode: "55",
      minLength: 11,
      maxLength: 11,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return CustomDropDownWidget<Country>(
      validator: Validators.validateDropDown,
      items: countries.map((Country value) {
        return DropdownMenuItem<Country>(
          value: value,
          child: Row(
            children: [
              CircleAvatar(
                backgroundColor: Colors.transparent,
                child: Text(value.flag),
              ),
              const SizedBox(
                width: 10,
              ),
              Text(
                value.name,
                overflow: TextOverflow.clip,
              ),
            ],
          ),
        );
      }).toList(),
      onChanged: (country) {
        selectedCountry = country;
        _phoneController.text = country!.dialCode;
      },
      label: 'Country',
    );
  }
}

class Validators {
  static String? validateDropDown(Country? value) =>
      value == null ? 'Select your Country' : null;
}

class Country {
  final String name;
  final String flag;
  final String code;
  final String dialCode;
  final String regionCode;
  final int minLength;
  final int maxLength;
  Country({
    required this.name,
    required this.flag,
    required this.code,
    required this.dialCode,
    this.regionCode = '',
    required this.minLength,
    required this.maxLength,
  });

  String get fullCountryCode {
    return dialCode + regionCode;
  }

  String get displayCC {
    if (regionCode != "") {
      return '$dialCode $this.regionCode';
    }
    return dialCode;
  }

  @override
  String toString() {
    return 'Country: $name $flag $code';
  }
}
