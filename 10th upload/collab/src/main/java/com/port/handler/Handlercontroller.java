package com.port.handler;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.binding.message.MessageBuilder;
import org.springframework.binding.message.MessageContext;
import org.springframework.stereotype.Component;

import com.port.bean.RegisterModule;
import com.port.service.RegisterModuleService;

@Component
public class Handlercontroller {
 
	@Autowired
	RegisterModuleService registerModuleService;
	
	public RegisterModule initFlow(){
		return new RegisterModule();
	}
 
	public String validateDetails(RegisterModule registerModule,MessageContext messageContext){
		String status = "success";
		if(registerModule.getName().isEmpty()){
			messageContext.addMessage(new MessageBuilder().error().source(
					"fname").defaultText("name is must ").build());
			status = "failure";
		}
		if(registerModule.getEmailid().isEmpty()){
			messageContext.addMessage(new MessageBuilder().error().source(
					"email").defaultText("email is must").build());
			status = "failure";
		}
		if(registerModule.getAddress().isEmpty()){
			messageContext.addMessage(new MessageBuilder().error().source(
					"address").defaultText("Address is must").build());
			status = "failure";
		}
		if(registerModule.getName().isEmpty()){
			messageContext.addMessage(new MessageBuilder().error().source(
					"uname").defaultText("username is must").build());
			status = "failure";
		}
		if(registerModule.getPassword().isEmpty()){
			messageContext.addMessage(new MessageBuilder().error().source(
					"pwrd").defaultText("password is must").build());
			status = "failure";
		}
		if(registerModule.getPassword().isEmpty()){
			messageContext.addMessage(new MessageBuilder().error().source(
					"repwrd").defaultText("password confirmation is must").build());
			status = "failure";
		}
		if(registerModule.getContact().isEmpty()){
			messageContext.addMessage(new MessageBuilder().error().source(
					"contact").defaultText("City is must").build());
			status = "failure";
		}
		List<RegisterModule> usrLt=registerModuleService.getList();
		for(RegisterModule usr:usrLt)
		{
			if(registerModule.getName().equals(usr.getName()))
			{
				messageContext.addMessage(new MessageBuilder().error().source(
						"fname").defaultText("Entered UserName is already exists..").build());
				status="failure";
			}
			if(registerModule.getEmailid().equals(usr.getEmailid()))
			{
				messageContext.addMessage(new MessageBuilder().error().source(
						"email").defaultText("Entered Email ID is already exists..").build());
				status="failure";
			}
		}
		if(status.equals("success"))
		{
			registerModuleService.insertRow(registerModule);
		}
		return status;
	}
}