import 'package:flutter/material.dart';
 class Symptoms{
   late final String image;
   late final String label;

 Symptoms({
  required this.image,
   required this.label,
});}

List <Symptoms> symptoms=[
  Symptoms(image: "images/", label: "temperature"),
  Symptoms(image: "images/", label: "snuffle"),
  Symptoms(image: "images/", label: "headache"),
  Symptoms(image: "images/", label: "dizzy"),
  Symptoms(image: "images/", label: "stomachache"),
  Symptoms(image: "images/", label: "dia"),
  Symptoms(image: "images/", label: "weight loss"),
  Symptoms(image: "images/", label: "cold"),
];