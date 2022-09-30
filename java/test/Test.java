/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package test;

import BaseDAO.AllDAO;
import BaseEntity.Author;
import BaseEntity.Publisher;
import java.util.List;

/**
 *
 * @author Vo Viet Nhan
 */
public class Test {
    public static void main(String[] args) {
        AllDAO dao = new AllDAO();
        dao.updateBook("30"," 11","11","5"," 5","6","6","7"," 9");
    }
}
