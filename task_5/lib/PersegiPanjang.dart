import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class PersegiPanjang extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();

  TextEditingController panjangController = TextEditingController();
  TextEditingController lebarController = TextEditingController();
  double panjang, lebar, keliling, luas;

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
                    labelText: 'Panjang',
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
                  controller: panjangController,
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
                    labelText: 'Lebar',
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
                  controller: lebarController,
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
                          panjang = double.parse(panjangController.text);
                          lebar = double.parse(lebarController.text);
                          luas = panjang * lebar;
                          keliling = (2*panjang) + (2*lebar);
                          return showDialog(
                              context: context,
                              builder: (context){
                                return AlertDialog(
                                    content: Text('Luas Persegi Panjang: $luas \nKeliling Persegi Panjang: $keliling')
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
