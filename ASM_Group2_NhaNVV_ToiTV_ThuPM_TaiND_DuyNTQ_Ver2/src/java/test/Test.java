/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package test;

import control.ProjectDAO;
import entity.Author;
import entity.Publisher;
import java.util.List;

/**
 *
 * @author Vo Viet Nhan
 */
public class Test {
    public static void main(String[] args) {
        ProjectDAO dao = new ProjectDAO();
        dao.updateBook("30"," 11","11","5"," 5","6","6","7"," 9");
    }
}
