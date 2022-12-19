import 'package:flutter/material.dart';
import 'package:vn_provinces/province.dart';
import 'package:vn_provinces/vn_provinces.dart';

final vnProvinces = VNProvinces();
List<VNProvince> provinces = vnProvinces.allProvince(keyword: "");
List<VNDistrict> districts =
    vnProvinces.allProvince(keyword: "Ba Đình").cast<VNDistrict>();
List<VNWard> wards = vnProvinces.allProvince(keyword: "phúc Xá").cast<VNWard>();

class DropdownProvices extends StatefulWidget {
  const DropdownProvices({super.key});

  @override
  State<DropdownProvices> createState() => _DropdownProvicesState();
}

class _DropdownProvicesState extends State<DropdownProvices> {
  late String dropdownValue;
  @override
  void initState() {
    super.initState();
    dropdownValue = provinces.first.name.toString().trim();
  }

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(10),
      ),
      child: SizedBox(
        height: 30,
        width: 90,
        child: DropdownButtonHideUnderline(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: PopupMenuButton<String>(
              child: Row(
                children: [
                  dropdownValue.startsWith("Tỉnh")
                      ? Text(dropdownValue.substring(4))
                      : Text(dropdownValue.substring(9)),
                  const Icon(Icons.arrow_drop_down),
                ],
              ),
              itemBuilder: (BuildContext context) {
                return provinces
                    .map((VNProvince province) => PopupMenuItem<String>(
                          value: province.name.toString().trim(),
                          child: Text(province.name.toString().trim()),
                        ))
                    .toList();
              },
              onSelected: (String value) {
                setState(() {
                  dropdownValue = value;
                });
              },
            ),
          ),
        ),
      ),
    );
  }
}

class DropdownDistrict extends StatefulWidget {
  const DropdownDistrict({super.key});

  @override
  State<DropdownDistrict> createState() => _DropdownDistrictState();
}

class _DropdownDistrictState extends State<DropdownDistrict> {
  late String dropdownValue;
  @override
  void initState() {
    super.initState();
    dropdownValue = districts.first.name.toString().trim();
  }

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(10),
      ),
      child: SizedBox(
        height: 30,
        width: 140,
        child: DropdownButtonHideUnderline(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: PopupMenuButton<String>(
              child: Row(
                children: [
                  Text(dropdownValue),
                  const Icon(Icons.arrow_drop_down),
                ],
              ),
              itemBuilder: (BuildContext context) {
                return districts
                    .map((VNDistrict province) => PopupMenuItem<String>(
                          value: province.name.toString().trim(),
                          child: Text(province.name.toString().trim()),
                        ))
                    .toList();
              },
              onSelected: (String value) {
                setState(() {
                  dropdownValue = value;
                });
              },
            ),
          ),
        ),
      ),
    );
  }
}
