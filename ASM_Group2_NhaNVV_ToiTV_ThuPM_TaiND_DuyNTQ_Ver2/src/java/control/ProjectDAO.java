/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package control;

import context.DBContext;
import entity.Admin;
import entity.Author;
import entity.Bill;
import entity.BillCompleted;
import entity.BookDetail;
import entity.Publisher;
import entity.User;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Vo Viet Nhan
 */
public class ProjectDAO {

    Connection conn = null;  //kết nối với sql server
    PreparedStatement ps = null; // ném câu lệnh neatbean vào trong sql
    ResultSet rs = null; //nhận kết quả trả về

    public User checkUserLogin(String user, String pass) {
        try {
            String query = "select * from [user] where username = ? and PASSWORD = ?";
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, user);
            ps.setString(2, pass);
            rs = ps.executeQuery();
            while (rs.next()) {
                User a = new User(rs.getString(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getString(7),
                        rs.getString(8));
                return a;
            }
        } catch (Exception e) {

            System.out.println(e);
        }
        return null;
    }

    public Admin checkAdminLogin(String user, String pass) {
        try {
            String query = "select* from Accounts where USERNAME=? and PASSWORD=?";
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, user);
            ps.setString(2, pass);
            rs = ps.executeQuery();
            while (rs.next()) {
                Admin a = new Admin(rs.getString(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getString(7),
                        rs.getString(8),
                        rs.getString(9)
                );
                return a;
            }
        } catch (Exception e) {
        }
        return null;
    }

    public User userSignUp(String fullName, String phone, String citizen_identity_card, String address, String mail, String USERNAME, String PASSWORD) {

        try {
            String query = "insert into [user](fullName,phone,citizen_identity_card,address,mail,USERNAME,[PASSWORD])\n"
                    + "values(?,?,?,?,?,?,?)";
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, fullName);
            ps.setString(2, phone);
            ps.setString(3, citizen_identity_card);
            ps.setString(4, address);
            ps.setString(5, mail);
            ps.setString(6, USERNAME);
            ps.setString(7, PASSWORD);
            ps.executeUpdate();

        } catch (Exception e) {
        }

        return null;
    }

    public List<BookDetail> searchByName(String txtName) {
        List<BookDetail> list = new ArrayList<>();
        String query = "select id_book, img,book_name,author_name,[language],[type],publisher_name,publishing_year,amount "
                + "from book b, author a, publisher p\n"
                + "where a.ID_author = b.ID_author and p.ID_publisher = b.ID_publisher and book_name like ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, "%" + txtName + "%");
            rs = ps.executeQuery();

            while (rs.next()) {
                list.add(new BookDetail(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getString(7),
                        rs.getInt(8))
                );
            }
        } catch (Exception e) {
            System.err.println(e);
        }
        return list;
    }

    public BookDetail getBookByID(String id_book) {
        String query = "select b.ID_book, img, book_name, a.author_name, b.language, b.type, p.publisher_name, b.amount\n"
                + "from Book b\n"
                + "inner join Borrow_Orders bo\n"
                + "on b.ID_Book = b.ID_Book\n"
                + "inner join author a\n"
                + "on b.ID_author=a.ID_author\n"
                + "inner join Publisher p\n"
                + "on p.ID_publisher = b.ID_publisher\n"
                + "where b.ID_book = ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, id_book);
            rs = ps.executeQuery();

            while (rs.next()) {
                BookDetail book = new BookDetail(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getString(7),
                        rs.getInt(8)
                );
                return book;
            }
        } catch (Exception e) {
            System.err.println(e);
        }
        return null;
    }

    public List<BookDetail> getDetailBook() {
        List<BookDetail> list = new ArrayList<>();
        String query = "select b.ID_book,img,book_name,a.author_name,b.language,b.type,p.publisher_name,b.amount \n"
                + "from Book b\n"
                + "inner join Borrow_Orders bo\n"
                + "on b.ID_Book = b.ID_Book\n"
                + "inner join author a \n"
                + "on b.ID_author=a.ID_author\n"
                + "inner join Publisher p \n"
                + "on p.ID_publisher = b.ID_publisher \n"
                + "where bo.status =1";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();

            while (rs.next()) {
                list.add(new BookDetail(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getString(7),
                        rs.getInt(8)
                ));
            }
        } catch (Exception e) {
            System.err.println(e);
        }
        return list;
    }

    public List<Author> authorCheck() {
        List<Author> list = new ArrayList<>();
        String query = "select * from author ";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);

            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Author(rs.getString(1),
                        rs.getString(2)));
            }
        } catch (Exception e) {
        }
        return list;
    }

    public void insertAuthor(String author_name) {
        String query = "insert into author (author_name) values (?)";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, author_name);
            ps.executeUpdate();
        } catch (Exception e) {
        }

    }

    public List<Publisher> publisherCheck() {
        List<Publisher> list = new ArrayList<>();
        String query = "select * from publisher ";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);

            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Publisher(rs.getString(1),
                        rs.getString(2)));
            }
        } catch (Exception e) {
        }
        return list;
    }

    public void insertPublisher(String publisher_name) {
        String query = "insert into publisher (publisher_name) values (?)";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, publisher_name);
            ps.executeUpdate();
        } catch (Exception e) {
        }

    }

    public void insertBook(String Id_publisher, String Id_author, String image, String name, String language, String type, String year, String amount) {
        String query = "insert book(ID_publisher,ID_author,img,book_name,language,type,publishing_year,amount)\n"
                + "values(?,?,?,?,?,?,?,?)";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, Id_publisher);
            ps.setString(2, Id_author);
            ps.setString(3, image);
            ps.setString(4, name);
            ps.setString(5, language);
            ps.setString(6, type);
            ps.setString(7, year);
            ps.setString(8, amount);
            ps.executeUpdate();
        } catch (Exception e) {

        }
    }

    public void deleteBook(String id) {
        String query = "UPDATE Book SET avaiable = 0 WHERE ID_book = ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, id);
            ps.executeUpdate();
        } catch (Exception e) {

        }
    }

    public void updateBook(String id, String Id_author, String Id_publisher, String image, String name, String language, String type, String year, String amount) {
        String query = "update [book] set ID_author=?,ID_publisher=?,img=?,book_name=?,[language]=?,[type]=?,publishing_year=?,amount=?\n"
                + "where ID_book=?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, Id_author);
            ps.setString(2, Id_publisher);
            ps.setString(3, image);
            ps.setString(4, name);
            ps.setString(5, language);
            ps.setString(6, type);
            ps.setString(7, year);
            ps.setString(8, amount);
            ps.setString(9, id);
            ps.executeUpdate();
        } catch (Exception e) {
            System.err.println(e);
        }

    }

    public List<Admin> getAllAdmins() {
        String query = "select * from librarian";
        List<Admin> list = new ArrayList<>();
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Admin(rs.getString(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getString(7),
                        rs.getString(8),
                        rs.getString(9)
                ));
            }
        } catch (Exception e) {
        }
        return list;
    }

    public Admin getAdminByID(String id) {
        String query = " select * from librarian where ID_librarian=?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, id);
            rs = ps.executeQuery();

            while (rs.next()) {
                Admin ad = new Admin(rs.getString(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getString(7),
                        rs.getString(8),
                        rs.getString(9)
                );
                return ad;
            }
        } catch (Exception e) {
            System.err.println(e);
        }
        return null;
    }

    public void updateAdmin(String id, String user, String pass, String name, String phone, String CMND, String address, String mail, String salary) {
        String query = "update Account set account_ID=?,role_ID=?,fullName=?,phone=?,citizen_identity_card=?,address=?,mail=?,USERNAME=?,PASSWORD=?,salary=?\n"
                + " where id_librarian =?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, user);
            ps.setString(2, pass);
            ps.setString(3, name);
            ps.setString(4, phone);
            ps.setString(5, CMND);
            ps.setString(6, address);
            ps.setString(7, mail);
            ps.setString(8, salary);
            ps.setString(9, id);
            ps.executeUpdate();
        } catch (Exception e) {
            System.err.println(e);
        }
    }

    public void deleteAdmin(String id) {
        String query = "delete from librarian where ID_librarian= ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, id);
            ps.executeUpdate();
        } catch (Exception e) {

        }
    }

    public Admin insertAdmin(String user, String pass, String name, String phone, String CMND, String address, String mail, String salary) {
        String query = "insert into librarian (USERNAME,PASSWORD,fullName,phone,citizen_identity_card,address,mail,salary)\n"
                + " values (?,?,?,?,?,?,?,?)";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, user);
            ps.setString(2, pass);
            ps.setString(3, name);
            ps.setString(4, phone);
            ps.setString(5, CMND);
            ps.setString(6, address);
            ps.setString(7, mail);
            ps.setString(8, salary);
            ps.executeUpdate();
        } catch (Exception e) {

        }
        return null;
    }

    public List<User> getAllUsers() {
        String query = "select * from [user]";
        List<User> list = new ArrayList<>();
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new User(
                        rs.getString(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getString(7),
                        rs.getString(8)
                ));
            }
        } catch (Exception e) {
        }
        return list;
    }

    public void deleteUser(String id) {
        String query = "delete from [user] where ID_user= ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, id);
            ps.executeUpdate();
        } catch (Exception e) {

        }
    }

    public User getUserByID(String id) {
        String query = " select * from [user] where ID_user=?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, id);
            rs = ps.executeQuery();

            while (rs.next()) {
                User us = new User(rs.getString(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getString(7),
                        rs.getString(8)
                );
                return us;
            }
        } catch (Exception e) {
            System.err.println(e);
        }
        return null;
    }

    public void updateUser(String id, String user, String pass, String name, String phone, String CMND, String address, String mail) {
        String query = "update [user] set USERNAME=?,PASSWORD=?,fullName=?,phone=?,citizen_identity_card=?,address=?,mail=?\n"
                + " where ID_user =?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, user);
            ps.setString(2, pass);
            ps.setString(3, name);
            ps.setString(4, phone);
            ps.setString(5, CMND);
            ps.setString(6, address);
            ps.setString(7, mail);
            ps.setString(8, id);
            ps.executeUpdate();
        } catch (Exception e) {
            System.err.println(e);
        }
    }

    public void insertBorrowBill(int id_book, String id_user, int Numbook) {
        String query = "insert into borrow_bill (ID_book,ID_user,NumBookGet)\n"
                + "  values(?,?,?)";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setInt(1, id_book);
            ps.setString(2, id_user);
            ps.setInt(3, Numbook);
            ps.executeUpdate();
        } catch (Exception e) {
            System.err.println(e);
        }
    }

    public List<Bill> getWaitingBill() {
        String query = " select u.fullName, b.book_name,bi.ID_borrow_bill,bi.check_get,bi.check_return,bi.NumBookGet from borrow_bill bi , [user] u, book b\n"
                + "where u.ID_user=bi.ID_user and b.ID_book = bi.ID_book and bi.check_get = 0 and bi.check_return=0";
        List<Bill> list = new ArrayList<>();
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Bill(
                        rs.getString(1),
                        rs.getString(2),
                        rs.getInt(3),
                        rs.getInt(4),
                        rs.getInt(5),
                        rs.getInt(6)
                ));
            }
        } catch (Exception e) {
        }
        return list;
    }

    public List<Bill> getProcessedBill() {
        String query = " select u.fullName, b.book_name,bi.ID_borrow_bill,bi.check_get,bi.check_return,bi.NumBookGet from borrow_bill bi , [user] u, book b\n"
                + "where u.ID_user=bi.ID_user and b.ID_book = bi.ID_book and bi.check_get = 1 and bi.check_return=0";
        List<Bill> list = new ArrayList<>();
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Bill(
                        rs.getString(1),
                        rs.getString(2),
                        rs.getInt(3),
                        rs.getInt(4),
                        rs.getInt(5),
                        rs.getInt(6)
                ));
            }
        } catch (Exception e) {
        }
        return list;
    }

    public List<BillCompleted> getCompletedBill() {
        String query = "select bi.[ID_borrow_bill], b.[img], b.[book_name], u.[fullName], bi.[Date_get], bi.[Date_return], l.[fullName], bi.[NumBookGet], bi.[NumBookReturn] from librarian l, borrow_bill bi , [user] u, book b\n"
                + "where u.ID_user=bi.ID_user and l.ID_librarian = bi.ID_librarian and b.ID_book = bi.ID_book and bi.check_get = 1 and bi.check_return=1";
        List<BillCompleted> list = new ArrayList<>();
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new BillCompleted(
                        rs.getString(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getString(7),
                        rs.getInt(8),
                        rs.getInt(9)
                ));
            }
        } catch (Exception e) {
            System.out.println(e);
        }
        return list;
    }

    public void processingBill(String id_bill, String date, String id_admin) {
        String query = " update borrow_bill set Date_get=?,ID_librarian=?,check_get=1\n"
                + "  where ID_borrow_bill=?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, date);
            ps.setString(2, id_admin);
            ps.setString(3, id_bill);

            ps.executeUpdate();
        } catch (Exception e) {
            System.out.println(e);
        }
    }

    public void completingBill(String id_bill, String date, String id_admin) {
        String query = " update borrow_bill set Date_return=?,ID_librarian=?,check_return=1\n"
                + "  where ID_borrow_bill=?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, date);
            ps.setString(2, id_admin);
            ps.setString(3, id_bill);

            ps.executeUpdate();
        } catch (Exception e) {
            System.out.println(e);
        }
    }

    public static void main(String[] args) {
        ProjectDAO dao = new ProjectDAO();
        BookDetail b = new BookDetail();
        b = dao.getBookByID("1");
        System.out.println(b);
    }
}
