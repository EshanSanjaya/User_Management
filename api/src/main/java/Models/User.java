
package Models;

import javax.xml.bind.annotation.XmlRootElement;

@XmlRootElement
public class User{

	private int PID;
	private String Pcode;
	private String PName;
	private String PNIC;
	private String PhoneNo;
	private String Email;
	private String Address;
	private String Password;

public User(){
}

public User(int PID){
	this.PID = PID;
}
public User(int PID,String Pcode,String PName,String PNIC,String PhoneNo,String Email,String Address,String Password){
	this.PID = PID;
	this.Pcode = Pcode;
	this.PName = PName;
	this.PNIC = PNIC;
	this.PhoneNo = PhoneNo;
	this.Email = Email;
	this.Address = Address;
	this.Password = Password;
}

public int getPID(){
return PID;
}

public void setPID(int PID){
	this.PID = PID;
}

public String getPcode(){
return Pcode;
}

public void setPcode(String Pcode){
	this.Pcode = Pcode;
}

public String getPName(){
return PName;
}

public void setPName(String PName){
	this.PName = PName;
}

public String getPNIC(){
return PNIC;
}

public void setPNIC(String PNIC){
	this.PNIC = PNIC;
}

public String getPhoneNo(){
return PhoneNo;
}

public void setPhoneNo(String PhoneNo){
	this.PhoneNo = PhoneNo;
}

public String getEmail(){
return Email;
}

public void setEmail(String Email){
	this.Email = Email;
}

public String getAddress(){
return Address;
}

public void setAddress(String Address){
	this.Address = Address;
}

public String getPassword(){
return Password;
}

public void setPassword(String Password){
	this.Password = Password;
}

}