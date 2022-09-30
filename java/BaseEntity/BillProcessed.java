/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package BaseEntity;

/**
 *
 * @author PC
 */
public class BillProcessed {
    private int ID_bill;
    private String fullName;
    private String book_name;
    private String img;
    private int numBookGet;

    public BillProcessed(int ID_bill, String fullName, String book_name, String img, int numBookGet) {
        this.ID_bill = ID_bill;
        this.fullName = fullName;
        this.book_name = book_name;
        this.img = img;
        this.numBookGet = numBookGet;
    }
    
    
}
