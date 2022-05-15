
package Controllers;


import Models.User;
import DataBaseConnector.Connector;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;


public class UserController{

	Connector con = Connector.getInstance();

	private UserController(){
	}

	private static final UserController obj = new UserController();

	public static UserController getInstance(){
		return obj;
	}

	public void Save(User data) throws Exception {
		con.getConnection();
		con.aud("INSERT INTO user(Pcode,PName,PNIC,PhoneNo,Email,Address,Password) values ('" + data.getPcode()+ "','" + data.getPName()+ "','" + data.getPNIC()+ "','" + data.getPhoneNo()+ "','" + data.getEmail()+ "','" + data.getAddress()+ "','" + data.getPassword()+ "') " );
	}

	public void Update(User data) throws Exception {
		con.getConnection();
		con.aud("UPDATE user SET Pcode  = '" + data.getPcode()+ "',PName  = '" + data.getPName()+ "',PNIC  = '" + data.getPNIC()+ "',PhoneNo  = '" + data.getPhoneNo()+ "',Email  = '" + data.getEmail()+ "',Address  = '" + data.getAddress()+ "',Password  = '" + data.getPassword()+ "' WHERE PID = '" + data.getPID()+ "'");
	}

	public void Delete(User data) throws Exception {
		con.getConnection();
		con.aud("DELETE FROM user WHERE PID = '" + data.getPID()+ "'");
	}

	public List<User> SearchAll() throws Exception {
		List<User> objList = new ArrayList<User>();
		con.getConnection();
		ResultSet rset = con.srh("SELECT * FROM user");
		while(rset.next()){
			User obj = new User();
			obj.setPID(rset.getInt(1));
			obj.setPcode(rset.getString(2));
			obj.setPName(rset.getString(3));
			obj.setPNIC(rset.getString(4));
			obj.setPhoneNo(rset.getString(5));
			obj.setEmail(rset.getString(6));
			obj.setAddress(rset.getString(7));
			obj.setPassword(rset.getString(8));
			objList.add(obj);
		}

	return objList;
	}

	public List<User> Search(User data) throws Exception {
		List<User> objList = new ArrayList<User>();
		con.getConnection();
		ResultSet rset = con.srh("SELECT * FROM user WHERE PID = '" + data.getPID()+ "'");
		while(rset.next()){
			User obj = new User();
			obj.setPID(rset.getInt(1));
			obj.setPcode(rset.getString(2));
			obj.setPName(rset.getString(3));
			obj.setPNIC(rset.getString(4));
			obj.setPhoneNo(rset.getString(5));
			obj.setEmail(rset.getString(6));
			obj.setAddress(rset.getString(7));
			obj.setPassword(rset.getString(8));
			objList.add(obj);
		}

	return objList;
	}

}