package mtp.datadog.web;

import static org.junit.Assert.fail;

import java.sql.Connection;
import java.sql.DriverManager;

import org.junit.Test;

public class mariadbTest {

	@Test
	public void test() {
		//fail("Not yet implemented");
	}
	 private static final String DRIVER = "org.mariadb.jdbc.Driver";
	 private static final String URL = "jdbc:mariadb://10.10.10.112:3306/mtp"; // jdbc:mysql://127.0.0.1:3306/여러분이 만드신 스키마이름
	 private static final String USER = "root"; //DB 사용자명
	 private static final String PW = "1234";   //DB 사용자 비밀번호
	 
	 @Test
	 public void testConnection() throws Exception{
	  Class.forName(DRIVER);
	 
	  try(Connection con = DriverManager.getConnection(URL, USER, PW)){
	   System.out.println("성공");
	   System.out.println(con);
	  }catch (Exception e) {
	   System.out.println("에러발생");
	   e.printStackTrace();
	  }
	  
	 }

}
