//
//package bikeshop.util;
//
//import java.io.FileInputStream;
//import java.io.IOException;
//import java.sql.Connection;
//import java.sql.DriverManager;
//import java.sql.SQLException;
//import java.util.Properties;
//
//
//public class DBHelper {
//    
//    
//    public static final String PATH_DB = "WEB-INF/resourses/db.properties";
//    
//    private static Properties getProperties() {
//        FileInputStream fis;
//        Properties prpt = new Properties();
//        try {
//            fis = new FileInputStream(PATH_DB);
//            prpt.load(fis);
//                } catch (IOException e){
//                    System.err.println("Файл свойств не найден!");
//                }
//            return prpt;
//    }
//    
//    private static String getUrl() {
//        return getProperties().getProperty("host");
//    }
//    
//    public static Connection getConnection() throws SQLException {
//            return DriverManager.getConnection(getUrl(), getProperties());
//    }
//}
