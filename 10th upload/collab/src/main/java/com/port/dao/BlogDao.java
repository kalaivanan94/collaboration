package com.port.dao;

import java.util.List;


import com.port.model.Blog;



public interface BlogDao {
 public int insertRow(Blog cat);

 public List getList();

 public Blog getRowById(int id);

 public int updateRow(Blog cat);

 public int deleteRow(int id);

}