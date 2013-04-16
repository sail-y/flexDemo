package com.ria.flex;

import java.util.ArrayList;
import java.util.List;

import com.ria.flex.model.User;

public class HelloWorld {
	
	public List<Integer> getList(){
		List<Integer> list = new ArrayList<Integer>();
		
		for(int i=0; i < 10 ; i++){
			list.add(i);
		}
		
		return list;
	}
	public HelloWorld() {  
    }  
  
    public String getHelloWorld(String name) {  
    	System.out.println("access success!");
        return "Hello World! "+name;  
    }  
    
}
