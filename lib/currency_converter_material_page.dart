//import 'dart:ffi';

//import 'package:flutter/foundation.dart';
      import 'package:flutter/material.dart';
      //import 'package:flutter/widgets.dart';
      class CurrencyConverterMaterialPage extends StatefulWidget{
        const CurrencyConverterMaterialPage({super.key});
                @override
        State<CurrencyConverterMaterialPage> createState() {
         return _CurrencyConverterMaterialPageState();
        }
      }


      class _CurrencyConverterMaterialPageState
       extends State<CurrencyConverterMaterialPage>{
          double result=0;
           final TextEditingController textEditingController=TextEditingController(); 
         @override
      Widget build(BuildContext context){
     
       
      final border=OutlineInputBorder(
                    borderSide: const BorderSide(
               
                width: 3.0,
                style: BorderStyle.solid,
              ),
              borderRadius: BorderRadius.circular(40),
              );

  return  Scaffold( 
    backgroundColor: Colors.blueGrey,
    appBar: AppBar(
      backgroundColor: Colors.blueGrey,
      elevation: 0,
      title: const Text ( 'Currency Converter',style: TextStyle(
        color:Colors.white),
        ),
        centerTitle: true,
    ),
     body:Center(
      child:  Column(
       mainAxisAlignment: MainAxisAlignment.center,     
       children: [
        Text(
          'BDT  $result',
         style:  const TextStyle(
          fontSize: 45,
          fontWeight: FontWeight.bold,
          color: Color.fromARGB(255, 255, 255, 255)
         ),
         ),

         Padding(
           padding: const EdgeInsets.all(10),  
           child: TextField(
            controller: textEditingController,
            style: const  TextStyle(
              color: Colors.black
            ),
            decoration: InputDecoration(
              hintText: 'Please enter the amount in USD',
              hintStyle: const TextStyle(
               color: Colors.black,
              ),
           
              prefixIcon: const Icon(Icons.monetization_on_outlined),
              prefixIconColor: Colors.black,
              filled: true,
              fillColor: Colors.white,
              focusedBorder:border,
              enabledBorder: border,
                ),
           
                keyboardType: const TextInputType.numberWithOptions(
                  decimal: true,
                  signed :true,
                ),
                 ),
         ), 
         Padding(
           padding: const EdgeInsets.all(10.0),
           child: ElevatedButton(onPressed: (){
            
           
           setState(() {
             result=double.parse(textEditingController.text)*117; 
           });
           }, 
           style:  TextButton.styleFrom(
            //elevation: MaterialStatePropertyAll(15),
            backgroundColor:(Colors.black),
            foregroundColor:(Colors.white),
            minimumSize:const Size(double.infinity ,50),
            
            shape:RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5)
            ),
            
           ),
           child: const Text('Convert'),
           
           ),
         ),

       ],
     ),
     ),
      );
 }
}