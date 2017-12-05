package test;
import java.sql.*;
public class ConnectDataBase {
	private static final String DRIVER_MYSQL = "com.mysql.jdbc.Driver";
	private static final String DBURL = "jdbc:mysql://localhost:3306/test";  
	private static final String DBUSER = "root";  
	private static final String DBPASS = "1234";
	private static Connection conn=null;
	private static Statement st;
//	连接到数据库
    public ConnectDataBase() {
        try
        {
            Class.forName(DRIVER_MYSQL);
            conn = DriverManager.getConnection(DBURL,DBUSER,DBPASS);
            st = conn.createStatement();
        } catch (Exception e)
        {
            e.printStackTrace();
        }
    }
    
    //查找珠海地区
    public ResultSet selectAllFromZhuHai(){ 
        ResultSet result = null;
        try
        {
            result = st.executeQuery("SELECT * FROM scenicinformation WHERE area = '珠海' ORDER BY hot DESC");
        } catch (SQLException e)
        {
            e.printStackTrace();
        }
        return result;
    }
    
    //查找中山地区
    public ResultSet selectAllFromZhongShan(){ 
        ResultSet result = null;
        try
        {
            result = st.executeQuery("SELECT * FROM scenicinformation WHERE area = '中山' ORDER BY hot DESC");
        } catch (SQLException e)
        {
            e.printStackTrace();
        }
        return result;
    }
    
    //查找澳门地区
    public ResultSet selectAllFromAoMen(){ 
        ResultSet result = null;
        try
        {
            result = st.executeQuery("SELECT * FROM scenicinformation WHERE area = '澳门' ORDER BY hot DESC");
        } catch (SQLException e)
        {
            e.printStackTrace();
        }
        return result;
    }
    
    
    //根据标题查找景点
    public ResultSet selectByTitle(String Title){ 
        ResultSet result = null;
        try
        {
            result = st.executeQuery("SELECT * FROM scenicinformation WHERE FeatureSport= '"+Title+"'");
        } catch (SQLException e)
        {
            e.printStackTrace();
        }
        return result;
    }
    
    
    
    
    //热度加一操作
    public void HotPlus(String name) {
    	String sql="UPDATE scenicinformation SET hot=hot+1 WHERE FeatureSport= '"+name+"'";
    	try {
			st.executeUpdate(sql);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
    }
  //按热度顺序查询数据表
    public ResultSet selectAll(){ 
        ResultSet result = null;
        try
        {
            result = st.executeQuery("SELECT * FROM scenicinformation ORDER BY hot DESC");
        } catch (SQLException e)
        {
            e.printStackTrace();
        }
        return result;
    }
    //查询热度最高的记录
    public ResultSet selectTop(){ 
        ResultSet result = null;
        try
        {
            result = st.executeQuery("SELECT * FROM scenics WHERE hot=(SELECT MAX(hot) FROM scenics)");
        } catch (SQLException e)
        {
            e.printStackTrace();
        }
        return result;
    }
    //输出结果
    public void printTABLE(ResultSet result) {
        try
        {
            while(result.next()) {
                System.out.println(result.getString(1)+"   "+result.getString(2)+"   "+result.getString(3)+"   "+result.getString(4));
            }
        } catch (SQLException e)
        {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
    }
    
    public static void main(String[] args) throws SQLException
    {
        // TODO Auto-generated method stub
    	ConnectDataBase a = new ConnectDataBase();
    	//a.executeDELETE(1);
        ResultSet result = a.selectAll();
        a.printTABLE(result);
        
        
        
    }
	
}
