package com.port.dao;

import java.util.List;


import com.port.model.Reply;



public interface AnswerDao {
 public int insertRow(Reply ans);

 public List getList();

 public Reply getRowById(int id);

 public int updateRow(Reply ans);

 public int deleteRow(int id);

}