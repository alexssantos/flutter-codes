import 'package:flutter_masked_text/flutter_masked_text.dart';

class ImcBloc {
	var heightCtrl = new MaskedTextController(mask: '000');
	var weightCtrl = new MaskedTextController(mask: '000');
	var result = "Preencha os dados para calcular o seu IMC";


	calculate(){
		double weight = double.parse(weightCtrl.text);
		double height = double.parse(heightCtrl.text) / 100;
		double imc = weight / (height * height);

		if (imc < 18.6) {
			result = "Abaixo do peso";
		} else if (imc >= 18.6 && imc <= 24.9){
			result = "Peso ideal";
		} else if (imc >= 24.9 && imc <= 29.9){
			result = "Levemente acima do peso";
		} else if (imc >= 29.9 && imc <= 34.9){
			result = "Obesidade grau I";
		} else if (imc >= 34.9 && imc <= 39.9){
			result = "Obesidade grau II";
		} else if (imc >= 40){
			result = "Obesidade grau III";
		}
		result += " " + imc.toStringAsPrecision(2);
	}
}