/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.exavalu.models;

/**
 *
 * @author user
 */
public class Todo {

    /**
     * @return the todoId
     */
    public int getTodoId() {
        return todoId;
    }

    /**
     * @param todoId the todoId to set
     */
    public void setTodoId(int todoId) {
        this.todoId = todoId;
    }

    /**
     * @return the todotitle
     */
    public String getTodotitle() {
        return todotitle;
    }

    /**
     * @param todotitle the todotitle to set
     */
    public void setTodotitle(String todotitle) {
        this.todotitle = todotitle;
    }
    
    private int todoId;
    private String todotitle;
    
}
