import 'package:flutter/material.dart';

class HomePageBackground extends StatelessWidget {

	final screenHeight;

	const HomePageBackground({Key key, @required this.screenHeight}) : super(key: key);	

	@override
	Widget build(BuildContext context) {
		final themeData = Theme.of(context);
		
		//"Cortador(clipper) baseador em pontos(paths) //Desenho atravezes de pontos 
		return ClipPath(
			//desenho 2D modelado
			clipper: BottomShapeClipper(),
			
			// Prenchimento do desenho 
			// começa de cima para baixo.
			child: Container(
				height: screenHeight * 0.5,
				color: themeData.primaryColor,
			),
		);		
	}
}

// Area colorida modelada na Pagina Home.
// Modelação baseada na sequencia de pontos ou trajetos.
class BottomShapeClipper extends CustomClipper<Path>{
	@override
	Path getClip(Size size) {
		Path path = Path();
		var alturaTotal = size.height;
		var larguraTotal = size.width;

		//pontos (x,y): 
		Offset curveStartPoint = Offset(0, alturaTotal * 0.85);
		Offset curveEndPoint = Offset(larguraTotal, alturaTotal * 0.85);

		//Até aqui não preenche nada.
		//GoTo: meio do canto esquerdo (começo da curva)
		path.lineTo(curveStartPoint.dx, curveStartPoint.dy);
		// Bezier é um tipo de curva conhcido (x1, y1) => (x2, y2)
		path.quadraticBezierTo(larguraTotal/2, alturaTotal, curveEndPoint.dx, curveEndPoint.dy);
		// GoTo: ponta superior direita.
		path.lineTo(larguraTotal, 0);

		return path;
	}

	//reconstroi a forma baseada nos pontos se houver mudança.
	@override
	bool shouldReclip(CustomClipper<Path> oldClipper) {
		return oldClipper != this;
	}

}