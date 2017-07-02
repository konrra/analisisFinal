package com.uca.analisis.metodos;


import java.util.ArrayList;

import net.objecthunter.exp4j.Expression;
import net.objecthunter.exp4j.ExpressionBuilder;

public class MetodoEuler {

	private String funcion;
	private double valorX;
	private double valorYx;
	private double valorFinal;
	private double valorH;
	
	 ArrayList<Double> numerosy =new ArrayList<Double>();
	 ArrayList<Double> numerosx =new ArrayList<Double>();
	
	public MetodoEuler(String funcion, Double valorX, Double valorYx, Double valorFinal, Double valorH) {
		
		this.funcion = funcion;
		this.valorX = valorX;
		this.valorYx = valorYx;
		this.valorFinal = valorFinal;
		this.valorH = valorH;
	}
	
	public ArrayList<Double> resolverMetodoy(){
		double xvalor=0;
		double yvalor=0; 
		double xAcotado=0;
		double yAcotado=0;
		double valorResta=0;
		double residuo=0;
		int entero=0;
		
			valorResta=valorFinal-valorX;
			residuo=valorResta/valorH;
			entero=(int) residuo;
	
			for (int i = 0; i <entero; i++) {
				Expression e1 = new ExpressionBuilder(funcion)
				        .variables("x", "y")
				        .build()
				        .setVariable("x",valorX)
						.setVariable("y", valorYx);
				double result = e1.evaluate();
				
				xvalor=valorX+valorH;
			    yvalor=valorYx+(valorH*result);
			    
			    xAcotado=redondearDecimales(xvalor, 2);
			    yAcotado=redondearDecimales(yvalor, 9);
			    numerosx.add(xAcotado);
			    numerosy.add(yAcotado);
				
				valorX=xvalor;
				valorYx=yvalor;				
			}	
		return numerosy;
	}
	
	public ArrayList<Double> resolverMetodox(){
		return numerosx;
	}

	 public static double redondearDecimales(double valorInicial, int numeroDecimales) {
	        double parteEntera, resultado;
	        resultado = valorInicial;
	        parteEntera = Math.floor(resultado);
	        resultado=(resultado-parteEntera)*Math.pow(10, numeroDecimales);
	        resultado=Math.round(resultado);
	        resultado=(resultado/Math.pow(10, numeroDecimales))+parteEntera;
	        return resultado;
	    }
	
	
}
