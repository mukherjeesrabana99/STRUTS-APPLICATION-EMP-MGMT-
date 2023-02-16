/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.exavalu.services;

import com.exavalu.models.Todo;
import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.ArrayList;
import java.util.Scanner;
import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;

/**
 *
 * @author user
 */
public class TodoService {
    
    public static ArrayList getTodos() throws ParseException, MalformedURLException, IOException{
        
        ArrayList<Todo> todos= new ArrayList();
        try{
            
            URL url = new URL("https://jsonplaceholder.typicode.com/todos");
            HttpURLConnection conn = (HttpURLConnection) url.openConnection();
            conn.setRequestMethod("GET");
            conn.setRequestProperty("Accept", "application/json");

            if (conn.getResponseCode() != 200) {
                throw new RuntimeException("Failed : HTTP error code : "
                        + conn.getResponseCode());
            }else{
                String inline = "";
                Scanner scanner = new Scanner(url.openStream());
                while (scanner.hasNext()) {
                    inline += scanner.nextLine();
                }
                scanner.close();
                JSONParser parse = new JSONParser();
                //convrerting the string to array since the json file contains array
                JSONArray todoArray= (JSONArray) parse.parse(inline);
                for (int i = 0; i < todoArray.size(); i++){
                    Todo todo= new Todo();
                    JSONObject todoObject= (JSONObject) todoArray.get(i);
                    int todoId= (int) todoObject.get("id");
                    String todoTitle= (String) todoObject.get("title");
                    
                    
                    //to set the values to the Todo model"
                    todo.setTodoId(todoId);
                    todo.setTodotitle(todoTitle);
                    
                    todos.add(todo);
                    System.out.print("todos.get(1): "+todos.get(1));
                    
                    
                }
                
                System.out.println("size of todos: "+todos.size());
                
            }
            
        }catch(Exception e){
            
        }
        
        return  todos;
    }
    
    public boolean insertTodos(){
        return  false;
    }
    
}
