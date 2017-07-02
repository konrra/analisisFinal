package com.uca.analisis.metodos;

import java.util.ArrayList;

import jdk.nashorn.internal.runtime.arrays.NumericElements;
import net.objecthunter.exp4j.Expression;
import net.objecthunter.exp4j.ExpressionBuilder;

public class MetodoHeun {

	private String funcion;
	private double valorX;
	private double valorYx;
	private double valorFinal;
	private double valorH;
	
	ArrayList<Double> numerosy =new ArrayList<Double>();
	ArrayList<Double> numerosx =new ArrayList<Double>();
	
	
	public MetodoHeun(String funcion, double valorX, double valorYx, double valorFinal, double valorH) {
		super();
		this.funcion = funcion;
		this.valorX = valorX;
		this.valorYx = valorYx;
		this.valorFinal = valorFinal;
		this.valorH = valorH;
	}
	
	public ArrayList<Double> resolverMetodoy2(){
		double xvalor;
		double yvalor; 
		double Uvalor;
		double numero;
		double numero2;
		double numero3;
		double xAcotado=0;
		double yAcotado=0;
		double valorResta=0;
		double residuo=0;
		int entero=0;
		
			valorResta=valorFinal-valorX;
			residuo=valorResta/valorH;
			entero=(int) residuo;
			
			for (int i = 0; i <entero; i++) {
			Expression e = new ExpressionBuilder(funcion)
			        .variables("x", "y")
			        .build()
			        .setVariable("x",valorX)
					.setVariable("y", valorYx);
			double result = e.evaluate();
			
			
			xvalor=valorX+valorH;
			Uvalor=valorYx+(valorH*result);

			
			Expression e2= new ExpressionBuilder(funcion)
			        .variables("x", "y")
			        .build()
			        .setVariable("x",xvalor)
					.setVariable("y", Uvalor);
			double result2 = e2.evaluate();
			
			
			numero=(result+result2);
			numero2=(numero/2);
			numero3=(valorH*numero2);
			
			yvalor=(valorYx+numero3);
			
			xAcotado=redondearDecimales(xvalor, 2);
		    yAcotado=redondearDecimales(yvalor, 9);
			 numerosx.add(xAcotado);
			 numerosy.add(yAcotado);
			 
			 valorX=xvalor;
			 valorYx=yvalor;
			}
		return numerosy;
	}
	
	public ArrayList<Double> resolverMetodox2(){
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
