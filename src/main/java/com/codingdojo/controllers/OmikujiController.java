package com.codingdojo.controllers;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class OmikujiController {
	
	@RequestMapping( value="/omikuji", method=RequestMethod.GET )
	public String sendOmikuji( HttpSession session ) {

		return "send.jsp";
	}
	
	@RequestMapping( value="/request", method=RequestMethod.POST )
	public String requestOmikuji( @RequestParam( value="number") int number, 
						 		  @RequestParam( value="city") String city,
						 		  @RequestParam( value="name") String name,
						 		  @RequestParam( value="hobby") String hobby,
						 		  @RequestParam( value="type") String type,
						 		  @RequestParam( value="say") String say,
						 		  HttpSession session ) {
		
		if( number < 5 ) {
			number = 5;
		}
		else if( number > 25 ) {
			number = 25;
		}
		
		session.setAttribute( "number", number );
		session.setAttribute( "city", city );
		session.setAttribute( "name", name );
		session.setAttribute( "hobby", hobby );
		session.setAttribute( "type", type );
		session.setAttribute( "say", say );
			
		return "redirect:/omikuji/show";
	}
	
	@RequestMapping( value="/omikuji/show", method=RequestMethod.GET )
	public String showOmikuji( HttpSession session ) {
		
		if( session.getAttribute("number") != null || session.getAttribute("city") != null ) {
			return "show.jsp";
		}
		else {
			return "redirect:/omikuji";
		}
	}
	
	@RequestMapping( value="/logout", method=RequestMethod.GET )
	public String logout( HttpSession session ) {
		
		session.removeAttribute( "number" );
		session.removeAttribute( "city" );
		session.removeAttribute( "name" );
		session.removeAttribute( "hobby" );
		session.removeAttribute( "type" );
		session.removeAttribute( "say" );
		
		return "redirect:/omikuji";
	}
}
