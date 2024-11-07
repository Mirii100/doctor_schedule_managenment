import 'package:flutter/material.dart';
 class Symptoms{
   late final String image;
   late final String label;

 Symptoms({
  required this.image,
   required this.label,
});}

List <Symptoms> symptoms=[
  Symptoms(image: "images/image1.jpg", label: "temperature"),
  Symptoms(image: "images/image2.jpg", label: "snuffle"),
  Symptoms(image: "images/image3.jpg", label: "headache"),
  Symptoms(image: "images/image4.jpg", label: "dizzy"),
  Symptoms(image: "images/image5.jpg", label: "stomachache"),
  Symptoms(image: "images/image6.jpg", label: "dia"),
  Symptoms(image: "images/image7.jpg", label: "weight loss"),
  Symptoms(image: "images/image8.jpg", label: "cold"),
];