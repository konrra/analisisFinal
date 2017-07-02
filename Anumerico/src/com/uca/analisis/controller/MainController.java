package com.uca.analisis.controller;


import java.util.ArrayList;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.uca.analisis.metodos.ListadoDto;
import com.uca.analisis.metodos.MetodoEuler;
import com.uca.analisis.metodos.MetodoHeun;
import com.uca.analisis.metodos.MetodoRungeKutta;

@Controller
public class MainController {

	@RequestMapping("/")
	public ModelAndView iniMain(){
		ModelAndView mv=new ModelAndView();
		mv.setViewName("index");
		return mv;
	}
	
	@RequestMapping("/PrimerMetodo")
	public ModelAndView PrimerMetodo(){
		ModelAndView mav= new ModelAndView();
		mav.setViewName("MetodoEuler");
		return mav;
	}
	
	
	@RequestMapping("/ImplementacionDeMetodos")
	public ModelAndView ImplementacionMetodos(
			@RequestParam String funcion,@RequestParam double paso1,
			@RequestParam double paso2,@RequestParam double paso3,
			@RequestParam double pasoh , @RequestParam String selecionado
			){
		ModelAndView metodo= new ModelAndView();
		String valores=selecionado;
		String[] val=valores.split(",");
		metodo.addObject("fun",funcion );
		metodo.addObject("pas1", paso1);
		metodo.addObject("pas2", paso2);
		metodo.addObject("pas3", paso3);
		metodo.addObject("pash", pasoh);
		String e,k,h;
		e=k=h = "";
		if (val[0].equals("true")) {
			 e = "E";
			MetodoEuler listaEuler = new MetodoEuler(funcion,paso1,paso2,paso3,pasoh);
			ArrayList<ListadoDto> listaE = new ArrayList();
			ArrayList<Double> x = listaEuler.resolverMetodox();
			ArrayList<Double> y = listaEuler.resolverMetodoy();
			String xString = x.toString().replace("[", "").replace("]", "");
			String yString = y.toString().replace("[", "").replace("]", "");
			for (int i = 0; i < x.size(); i++) {
				ListadoDto l = new ListadoDto();
				l.setrEuler1(x.get(i));
				l.setrEuler2(y.get(i));
				listaE.add(l);
			}
			metodo.addObject("valEuler",listaE);
//			
			metodo.addObject("val_x",xString);
			metodo.addObject("val_y",yString);
		
		}
		
		if(val[1].equals("true")) {
			 h = "H";
			MetodoHeun listaHeun = new MetodoHeun(funcion,paso1,paso2,paso3,pasoh);
			ArrayList<ListadoDto> listaH = new ArrayList();
			
			ArrayList<Double> xh = listaHeun.resolverMetodox2();
			ArrayList<Double> yh = listaHeun.resolverMetodoy2();
			String xhString = xh.toString().replace("[", "").replace("]", "");
			String yhString = yh.toString().replace("[", "").replace("]", "");
			
			for (int i = 0; i < xh.size(); i++) {
				ListadoDto l = new ListadoDto();
				l.setrHeun1(xh.get(i));
				l.setrHeun2(yh.get(i));
				listaH.add(l);
			}
			metodo.addObject("valHeung", listaH);
			metodo.addObject("heu_x",xhString);
			metodo.addObject("heu_y",yhString);	
		} 
		if (val[2].equals("true")) {
			MetodoRungeKutta listaKutta= new MetodoRungeKutta(funcion,paso1,paso2,paso3,pasoh);
			ArrayList<ListadoDto> listaK = new ArrayList();
			 k = "K";
			ArrayList<Double> xk = listaKutta.resolverMetodox3();
			ArrayList<Double> yk = listaKutta.resolverMetodoy3();
			ArrayList<Double> k1 = listaKutta.valoresK1();
			ArrayList<Double> k2 = listaKutta.valoresK2();
			ArrayList<Double> k3 = listaKutta.valoresK3();
			ArrayList<Double> k4 = listaKutta.valoresK4();
			String xkString = xk.toString().replace("[", "").replace("]", "");
			String ykString = yk.toString().replace("[", "").replace("]", "");
			for (int i = 0; i < xk.size(); i++) {
				ListadoDto l = new ListadoDto();
				l.setrKutta1(xk.get(i));
				l.setrKutta2(yk.get(i));
				l.setRespKutta1(k1.get(i));
				l.setRespKutta2(k2.get(i));
				l.setRespKutta3(k3.get(i));
				l.setRespKutta4(k4.get(i));
				listaK.add(l);
			}
			metodo.addObject("valKuta", listaK);
			
			metodo.addObject("kut_x",xkString);
			metodo.addObject("kut_y",ykString);
			
			metodo.addObject("kut_y",ykString);
			metodo.addObject("kut_y",ykString);
			metodo.addObject("kut_y",ykString);
//			
//			metodo.addObject("respK1",listaKutta.valoresK1());
//			metodo.addObject("respK2",listaKutta.valoresK2());
//			metodo.addObject("respK3",listaKutta.valoresK3());
//			metodo.addObject("respK4",listaKutta.valoresK4());
			
		}
	
//		if(funcionReal.equals("")){
//			CalculoAnalitico listaAn=new CalculoAnalitico(funcionReal, paso1, paso3, pasoh);
			metodo.addObject("e",e);
			metodo.addObject("h",h);
			metodo.addObject("k",k);
//					
//		} 
		metodo.setViewName("calculoMetodo");
		return metodo;
		
	}
	
//	@RequestMapping("/PrimeraImplementacion")
//	public ModelAndView ImplementacionDeEuler(@RequestParam String funcion,
//			@RequestParam double paso1,@RequestParam double paso2,@RequestParam double paso3,
//			@RequestParam double pasoh
//			){
//		ModelAndView metodo= new ModelAndView();
//		MetodoEuler lista = new MetodoEuler(funcion,paso1,paso2,paso3,pasoh);
//		LinkedList<ListadoDto> listaRe = new LinkedList<>();
//		ArrayList<Double> x = lista.resolverMetodox();
//		ArrayList<Double> y = lista.resolverMetodoy();
//		for (int i = 0; i < x.size(); i++) {
//			ListadoDto l = new ListadoDto();
//			l.setRespuesta1(x.get(i));
//			l.setRespuesta2(y.get(i));
//			listaRe.add(l);
//		}
//		
//		metodo.addObject("valores",listaRe);
//		metodo.addObject("val_x",x);
//		metodo.addObject("val_y",y);
//		metodo.addObject("paso1",paso1);
//		metodo.addObject("paso2",paso2);
//		metodo.addObject("paso3",paso3);
//		metodo.addObject("pasoh",pasoh);
//		metodo.addObject("funcion",funcion);
////		metodo.addObject("y",lista.resolverMetodoy());
//		metodo.setViewName("calculoMetodo");
//		return metodo;
//		
//	}
	
//	@RequestMapping("/SegundaImplementacion")
//	public ModelAndView ImplementacionDeHeun(@RequestParam String funcion,
//			@RequestParam double paso1,@RequestParam double paso2,@RequestParam double paso3,
//			@RequestParam double pasoh){
//		
//		ModelAndView metodo= new ModelAndView();
//		MetodoHeun lista= new MetodoHeun(funcion,paso1,paso2,paso3,pasoh);
//		LinkedList<ListadoDto> listaRe = new LinkedList<>();
//		ArrayList<Double> x = lista.resolverMetodox();
//		ArrayList<Double> y = lista.resolverMetodoy();
//		for (int i = 0; i < x.size(); i++) {
//			ListadoDto l = new ListadoDto();
//			l.setRespuesta1(x.get(i));
//			l.setRespuesta2(y.get(i));
//			listaRe.add(l);
//		}
//		
//		metodo.addObject("valores",listaRe);
//		metodo.addObject("paso1",paso1);
//		metodo.addObject("paso2",paso2);
//		metodo.addObject("paso3",paso3);
//		metodo.addObject("pasoh",pasoh);
//		metodo.addObject("funcion",funcion);
//		metodo.setViewName("MetodoHeun");
//		return metodo;		
//	}
//	
//	@RequestMapping(value="cancel", method=RequestMethod.POST)
//	public ModelAndView ImplementacionDeRangeKutta(@RequestParam String funcion,
//			@RequestParam double paso1,@RequestParam double paso2,@RequestParam double paso3,
//			@RequestParam double pasoh){
//		ModelAndView metodo= new ModelAndView();
//		MetodoRungeKutta lista=new MetodoRungeKutta(funcion,paso1,paso2,paso3,pasoh);
//		
//		LinkedList<ListadoDto> listaRe = new LinkedList<>();
//		ArrayList<Double> x = lista.resolverMetodox();
//		ArrayList<Double> y = lista.resolverMetodoy();
//		for (int i = 0; i < x.size(); i++) {
//			ListadoDto l = new ListadoDto();
//			l.setRespuesta1(x.get(i));
//			l.setRespuesta2(y.get(i));
//			listaRe.add(l);
//		}
//		
//		metodo.addObject("valores",listaRe);
//		metodo.addObject("paso1",paso1);
//		metodo.addObject("paso2",paso2);
//		metodo.addObject("paso3",paso3);
//		metodo.addObject("pasoh",pasoh);
//		metodo.addObject("funcion",funcion);
//		metodo.setViewName("MetodoRungeKutta");
//		return metodo;
//	}
	
	
	@RequestMapping("/MetodoKutta")
	public ModelAndView metodoKutta(){
		ModelAndView mav= new ModelAndView();
		mav.setViewName("MetodoKutta");
		return mav;
	}
	
	@RequestMapping("/MetodoHeun")
	public ModelAndView metodoHeun(){
		ModelAndView mav= new ModelAndView();
		mav.setViewName("MetodoHeun");
		return mav;
	}
	
	@RequestMapping("/Calculo")
	public ModelAndView caculos(){
		ModelAndView mav= new ModelAndView();
		mav.setViewName("calculoMetodo");
		return mav;
	}
	
	
	
}
