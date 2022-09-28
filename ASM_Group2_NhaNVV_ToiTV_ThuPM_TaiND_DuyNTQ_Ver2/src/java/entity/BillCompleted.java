/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entity;

/**
 *
 * @author PC
 */
public class BillCompleted {
    private String ID_bill;
    private String img;
    private String book_name;
    private String fullName;
    private String date_get;
    private String date_return;
    private String manager;
    private int NumBookGet;
    private int NumBookReturn;

    public String getID_bill() {
        return ID_bill;
    }

    public void setID_bill(String ID_bill) {
        this.ID_bill = ID_bill;
    }

    public String getImg() {
        return img;
    }

    public void setImg(String img) {
        this.img = img;
    }

    public String getBook_name() {
        return book_name;
    }

    public void setBook_name(String book_name) {
        this.book_name = book_name;
    }

    public String getFullName() {
        return fullName;
    }

    public void setFullName(String fullName) {
        this.fullName = fullName;
    }

    public String getDate_get() {
        return date_get;
    }

    public void setDate_get(String date_get) {
        this.date_get = date_get;
    }

    public String getDate_return() {
        return date_return;
    }

    public void setDate_return(String date_return) {
        this.date_return = date_return;
    }

    public String getManager() {
        return manager;
    }

    public void setManager(String manager) {
        this.manager = manager;
    }

    public int getNumBookGet() {
        return NumBookGet;
    }

    public void setNumBookGet(int NumBookGet) {
        this.NumBookGet = NumBookGet;
    }

    public int getNumBookReturn() {
        return NumBookReturn;
    }

    public void setNumBookReturn(int NumBookReturn) {
        this.NumBookReturn = NumBookReturn;
    }

    public BillCompleted(String ID_bill, String img, String book_name, String fullName, String date_get, String date_return, String manager, int NumBookGet, int NumBookReturn) {
        this.ID_bill = ID_bill;
        this.img = img;
        this.book_name = book_name;
        this.fullName = fullName;
        this.date_get = date_get;
        this.date_return = date_return;
        this.manager = manager;
        this.NumBookGet = NumBookGet;
        this.NumBookReturn = NumBookReturn;
    }

}
