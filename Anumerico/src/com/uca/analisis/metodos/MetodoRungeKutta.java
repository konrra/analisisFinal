package com.uca.analisis.metodos;

import java.util.ArrayList;

import net.objecthunter.exp4j.Expression;
import net.objecthunter.exp4j.ExpressionBuilder;

public class MetodoRungeKutta {

	private String funcion;
	private double valorX;
	private double valorYx;
	private double valorFinal;
	private double valorH;
	
	ArrayList<Double> numerosy =new ArrayList<Double>();
	ArrayList<Double> numerosx =new ArrayList<Double>();
	
	ArrayList<Double> numerok1= new ArrayList<Double>();
	ArrayList<Double> numerok2= new ArrayList<Double>();
	ArrayList<Double> numerok3= new ArrayList<Double>();
	ArrayList<Double> numerok4= new ArrayList<Double>();
	
	
	public MetodoRungeKutta(String funcion, double valorX, double valorYx, double valorFinal, double valorH) {
		super();
		this.funcion = funcion;
		this.valorX = valorX;
		this.valorYx = valorYx;
		this.valorFinal = valorFinal;
		this.valorH = valorH;
	}
	
	public ArrayList<Double> resolverMetodoy3(){
		double xvalor;
		double yvalor; 
		double valork1;
		double valork2;
		double valork3;
		double valork4;
		
		double valorx_k2;
		double valory_k2;
		
		double valorx_k3;
		double valory_k3;
		
		double valorx_k4;
		double valory_k4;
		
		double xAcotado=0;
		double yAcotado=0;
		
		double k1Acotado=0;
		double k2Acotado=0;
		double k3Acotado=0;
		double k4Acotado=0;
		
		double valorResta=0;
		double residuo=0;
		int entero=0;
		
		
		valorResta=valorFinal-valorX;
		residuo=valorResta/valorH;
		entero=(int) residuo;
		
		for (int i = 0; i <entero; i++){
			Expression e = new ExpressionBuilder(funcion)
			        .variables("x", "y")
			        .build()
			        .setVariable("x",valorX)
					.setVariable("y", valorYx);
			double result = e.evaluate();
			
			valork1=result;
			
			valorx_k2=valorX+(valorH/2);
			valory_k2=valorYx+((valork1*valorH)/2);
			
			Expression e2 = new ExpressionBuilder(funcion)
			        .variables("x", "y")
			        .build()
			        .setVariable("x",valorx_k2)
					.setVariable("y", valory_k2);
			double result2 = e2.evaluate();
			
			valork2=result2;
			
			valorx_k3=valorX+(valorH/2);
			valory_k3=valorYx+((valork2*valorH)/2);
			
			Expression e3= new ExpressionBuilder(funcion)
			        .variables("x", "y")
			        .build()
			        .setVariable("x",valorx_k3)
					.setVariable("y", valory_k3);
			double result3 = e3.evaluate();
			
			valork3=result3;
			
			valorx_k4=valorX+valorH;
			valory_k4=valorYx+(valork3*valorH);
			
			Expression e4= new ExpressionBuilder(funcion)
			        .variables("x", "y")
			        .build()
			        .setVariable("x",valorx_k4)
					.setVariable("y", valory_k4);
			double result4 = e4.evaluate();
			
			valork4=result4;
			
			xvalor=valorX+valorH;
			
			yvalor=valorYx+((valork1+(2*valork2)+(2*valork3)+valork4)*(valorH/6));
			
			xAcotado=redondearDecimales(xvalor, 2);
		    yAcotado=redondearDecimales(yvalor, 9);
			numerosx.add(xAcotado);
			numerosy.add(yAcotado);
			
			k1Acotado=redondearDecimales(valork1, 9);
		    k2Acotado=redondearDecimales(valork2, 9);
		    k3Acotado=redondearDecimales(valork3, 9);
		    k4Acotado=redondearDecimales(valork4, 9);
			numerok1.add(k1Acotado);
			numerok2.add(k2Acotado);
			numerok3.add(k3Acotado);
			numerok4.add(k4Acotado);
			
			
			 valorX=xvalor;
			 valorYx=yvalor;
			 
		} 
		
		return numerosy;
	}
	
	public ArrayList<Double> resolverMetodox3(){
		return numerosx;
	}
	public ArrayList<Double> valoresK1(){
		return numerok1;
	}
	
	public ArrayList<Double> valoresK2(){
		return numerok2;
	}
	public ArrayList<Double> valoresK3(){
		return numerok3;
	}
	public ArrayList<Double> valoresK4(){
		return numerok4;
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
