package com.port.service;

import java.util.List;


import com.port.model.Forum;



public interface ForumService {
 public int insertRow(Forum frm);

 public List getList();

 public Forum getRowById(int id);

 public int updateRow(Forum frm );

 public int deleteRow(int id);

}