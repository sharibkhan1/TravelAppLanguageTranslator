import 'package:flutter/material.dart';
import 'package:travelappui/Model/model.dart';

Widget bestNatureSlider(LocationDetail location) {
  return Positioned(
    top: 300,
    left: 100,
    child: Column(
      children: [
        Text(
          location.name,
          style: const TextStyle(
              fontSize: 20,
              color: Colors.white,
              fontWeight: FontWeight.bold),
        ),
        Row(
          children: [
            const Icon(
              Icons.location_on,
              size: 30,
              color: Colors.white,
            ),
            Text(
              location.address,
              style: const TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                  fontWeight: FontWeight.w500),
            ),
          ],
        )
      ],
    ),
  );
}
