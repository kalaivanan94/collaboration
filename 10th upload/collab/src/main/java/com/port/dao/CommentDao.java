package com.port.dao;

import java.util.List;


import com.port.model.Cmd;



public interface CommentDao {
 public int insertRow(Cmd cmt);

 public List getList();

 public Cmd getRowById(int id);

 public int updateRow(Cmd cmt);

 public int deleteRow(int id);

}