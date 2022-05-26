package dao;
import java.sql.*;

public class  CrudUtil {
    private static PreparedStatement getPreparedStatement (String sql,Connection connection ,Object... args) throws SQLException, ClassNotFoundException {
        PreparedStatement pst = connection.prepareStatement(sql);
        for(int i=0; i<args.length; i++){
            pst.setObject(i+1,args[i]);
        }
        return pst;
    }
    public static boolean executeUpdate(String sql ,Connection connection ,Object... args) throws SQLException, ClassNotFoundException {
        PreparedStatement pst = getPreparedStatement(sql,connection , args);
        return pst.executeUpdate()>0;
    }
    public static ResultSet executeQuery(String sql,Connection connection  ,Object... args) throws SQLException, ClassNotFoundException {
        PreparedStatement pst = getPreparedStatement(sql, connection , args);
        return pst.executeQuery();
    }
}
