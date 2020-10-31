import 'package:flutter/material.dart';

class Segitiga extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();

  TextEditingController sisiAlasController = TextEditingController();
  TextEditingController sisiBController = TextEditingController();
  TextEditingController sisiCController = TextEditingController();
  TextEditingController tinggiController = TextEditingController();
  double sisiAlas, sisiB, sisiC, tinggi, keliling, luas;

  @override
  Widget build(BuildContext context) {
    return Form(
        key: _formKey,
        child: Center(
          child: Column(
            children: <Widget>[
              SizedBox(height: 10,),
              Container(
                width: 250,
                child: TextFormField(
                  decoration: new InputDecoration(
                    labelText: 'Sisi Alas',
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.blue, width: 2),
                        borderRadius: const BorderRadius.all(
                            const Radius.circular(10)
                        )
                    ),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.blue, width: 2),
                        borderRadius: const BorderRadius.all(
                            const Radius.circular(10)
                        )
                    ),
                    errorBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.blue, width: 2),
                        borderRadius: const BorderRadius.all(
                            const Radius.circular(10)
                        )
                    ),
                    focusedErrorBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.blue, width: 2),
                        borderRadius: const BorderRadius.all(
                            const Radius.circular(10)
                        )
                    ),
                  ),
                  keyboardType: TextInputType.number,
                  controller: sisiAlasController,
                  validator: (value) {
                    if(value.isEmpty){
                      return 'Tidak boleh kosong!';
                    }
                    return null;
                  },
                ),
              ),
              SizedBox(height: 10,),
              Container(
                width: 250,
                child: TextFormField(
                  decoration: new InputDecoration(
                    labelText: 'Sisi B',
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.blue, width: 2),
                        borderRadius: const BorderRadius.all(
                            const Radius.circular(10)
                        )
                    ),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.blue, width: 2),
                        borderRadius: const BorderRadius.all(
                            const Radius.circular(10)
                        )
                    ),
                    errorBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.blue, width: 2),
                        borderRadius: const BorderRadius.all(
                            const Radius.circular(10)
                        )
                    ),
                    focusedErrorBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.blue, width: 2),
                        borderRadius: const BorderRadius.all(
                            const Radius.circular(10)
                        )
                    ),
                  ),
                  keyboardType: TextInputType.number,
                  controller: sisiBController,
                  validator: (value) {
                    if(value.isEmpty){
                      return 'Tidak boleh kosong!';
                    }
                    return null;
                  },
                ),
              ),
              SizedBox(height: 10),
              Container(
                width: 250,
                child: TextFormField(
                  decoration: new InputDecoration(
                    labelText: 'Sisi C',
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.blue, width: 2),
                        borderRadius: const BorderRadius.all(
                            const Radius.circular(10)
                        )
                    ),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.blue, width: 2),
                        borderRadius: const BorderRadius.all(
                            const Radius.circular(10)
                        )
                    ),
                    errorBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.blue, width: 2),
                        borderRadius: const BorderRadius.all(
                            const Radius.circular(10)
                        )
                    ),
                    focusedErrorBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.blue, width: 2),
                        borderRadius: const BorderRadius.all(
                            const Radius.circular(10)
                        )
                    ),
                  ),
                  keyboardType: TextInputType.number,
                  controller: sisiCController,
                  validator: (value) {
                    if(value.isEmpty){
                      return 'Tidak boleh kosong!';
                    }
                    return null;
                  },
                ),
              ),
              SizedBox(height: 10,),
              Container(
                width: 250,
                child: TextFormField(
                  decoration: new InputDecoration(
                    labelText: 'Tinggi',
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.blue, width: 2),
                        borderRadius: const BorderRadius.all(
                            const Radius.circular(10)
                        )
                    ),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.blue, width: 2),
                        borderRadius: const BorderRadius.all(
                            const Radius.circular(10)
                        )
                    ),
                    errorBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.blue, width: 2),
                        borderRadius: const BorderRadius.all(
                            const Radius.circular(10)
                        )
                    ),
                    focusedErrorBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.blue, width: 2),
                        borderRadius: const BorderRadius.all(
                            const Radius.circular(10)
                        )
                    ),
                  ),
                  keyboardType: TextInputType.number,
                  controller: tinggiController,
                  validator: (value) {
                    if(value.isEmpty){
                      return 'Tidak boleh kosong!';
                    }
                    return null;
                  },
                ),
              ),
              SizedBox(height: 10),
              Container(
                  width: 150,
                  child: MaterialButton(
                      color: Colors.blue,
                      child: Text('Hitung', style: TextStyle(color: Colors.white)),
                      onPressed:(){
                        if(_formKey.currentState.validate()){
                          sisiAlas = double.parse(sisiAlasController.text);
                          sisiB = double.parse(sisiBController.text);
                          sisiC = double.parse(sisiCController.text);
                          tinggi = double.parse(tinggiController.text);
                          luas = (1/2)*sisiAlas*tinggi;
                          keliling = sisiAlas + sisiB + sisiC;
                          return showDialog(
                              context: context,
                              builder: (context){
                                return AlertDialog(
                                    content: Text('Luas Segitiga: $luas \nKeliling Segitiga: $keliling')
                                );
                              }
                          );
                        }
                      },
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)
                      )
                  )
              )
            ],
          ),
        )
    );
  }
}
