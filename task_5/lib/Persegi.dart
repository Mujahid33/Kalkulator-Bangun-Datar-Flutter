import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Persegi extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();

  TextEditingController sisiController = TextEditingController();
  double sisi, keliling, luas;
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
                  labelText: 'Sisi',
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
                controller: sisiController,
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
              width: 150,
              child: MaterialButton(
                color: Colors.blue,
                child: Text('Hitung', style: TextStyle(color: Colors.white)),
                onPressed:(){
                  if(_formKey.currentState.validate()){
                    sisi = double.parse(sisiController.text);
                    luas = sisi * sisi;
                    keliling = 4 * sisi;
                    return showDialog(
                        context: context,
                        builder: (context){
                          return AlertDialog(
                              content: Text('Luas Persegi: $luas \nKeliling Persegi: $keliling')
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
