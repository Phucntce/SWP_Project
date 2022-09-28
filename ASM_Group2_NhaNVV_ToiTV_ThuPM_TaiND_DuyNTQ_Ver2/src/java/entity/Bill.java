/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entity;

/**
 *
 * @author Vo Viet Nhan
 */
public class Bill {
    private String fullName;
    private String book_name;
    private int ID_bill;
    private int check_get;
    private int check_return;
    private int numBookGet;
    

    public Bill(String fullName, String book_name, int ID_bill, int check_get, int check_return, int numBookGet) {
        this.fullName = fullName;
        this.book_name = book_name;
        this.ID_bill = ID_bill;
        this.check_get = check_get;
        this.check_return = check_return;
        this.numBookGet = numBookGet;
    }

    public String getFullName() {
        return fullName;
    }

    public void setFullName(String fullName) {
        this.fullName = fullName;
    }

    public String getBook_name() {
        return book_name;
    }

    public void setBook_name(String book_name) {
        this.book_name = book_name;
    }

    public int getID_bill() {
        return ID_bill;
    }

    public void setID_bill(int ID_bill) {
        this.ID_bill = ID_bill;
    }

    public int getCheck_get() {
        return check_get;
    }

    public void setCheck_get(int check_get) {
        this.check_get = check_get;
    }

    public int getCheck_return() {
        return check_return;
    }

    public void setCheck_return(int check_return) {
        this.check_return = check_return;
    }

    public int getNumBookGet() {
        return numBookGet;
    }

    public void setNumBookGet(int numBookGet) {
        this.numBookGet = numBookGet;
    }
    
    
}
