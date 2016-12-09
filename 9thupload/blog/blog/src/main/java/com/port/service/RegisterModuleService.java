package com.port.service;

import java.util.List;


import com.port.bean.RegisterModule;

public interface RegisterModuleService {

	public int insertRow(RegisterModule p); 
	
	public List getList();
	
	public RegisterModule getRowById(int id);
	
	public int updateRow(RegisterModule p);
	
	public int deleteRow(int id);

}
