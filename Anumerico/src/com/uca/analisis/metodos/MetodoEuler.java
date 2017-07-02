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
		double xvalor = 0;
		double yvalor = 0; 
		do {
			Expression e = new ExpressionBuilder(funcion)
			        .variables("x", "y")
			        .build()
			        .setVariable("x",valorX)
					.setVariable("y", valorYx);
			double result = e.evaluate();
			
		    xvalor=valorX+valorH;
		    yvalor=valorYx+(valorH*result);
			
		    numerosx.add(xvalor);
		    numerosy.add(yvalor);
			
			valorX=xvalor;
			valorYx=yvalor;
			
		} while (valorX!=valorFinal);
		return numerosy;
	}
	
	public ArrayList<Double> resolverMetodox(){
		return numerosx;
	}
	
}
