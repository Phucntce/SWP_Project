/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package BaseEntity;

/**
 *
 * @author Vo Viet Nhan
 */
public class Admin {
    private String id;
    private String username;
    private String pass;
    private String fullname;
    private String phone;
    private String CMND;
    private String address;
    private String mail;
    private String salary;
    public Admin() {
    }

    public Admin(String id, String username, String pass, String fullname, String phone, String CMND, String address, String mail, String salary) {
        this.id = id;
        this.username = username;
        this.pass = pass;
        this.fullname = fullname;
        this.phone = phone;
        this.CMND = CMND;
        this.address = address;
        this.mail = mail;
        this.salary = salary;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPass() {
        return pass;
    }

    public void setPass(String pass) {
        this.pass = pass;
    }

    public String getFullname() {
        return fullname;
    }

    public void setFullname(String fullname) {
        this.fullname = fullname;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getCMND() {
        return CMND;
    }

    public void setCMND(String CMND) {
        this.CMND = CMND;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getMail() {
        return mail;
    }

    public void setMail(String mail) {
        this.mail = mail;
    }

    public String getSalary() {
        return salary;
    }

    public void setSalary(String salary) {
        this.salary = salary;
    }

    @Override
    public String toString() {
        return "Admin{" + "id=" + id + ", username=" + username + ", pass=" + pass + ", fullname=" + fullname + ", phone=" + phone + ", CMND=" + CMND + ", address=" + address + ", mail=" + mail + ", salary=" + salary + '}';
    }

   
}
