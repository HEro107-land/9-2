import java.sql.*;

class JDBCInsert {
    public static void main(String args[]) {
        try {
            // Load JDBC Driver
            Class.forName("com.mysql.cj.jdbc.Driver");

            // Connect to database
            Connection con = DriverManager.getConnection(
                "jdbc:mysql://localhost:3306/studentdb",
                "root",
                "password"
            );

            // Insert query
            String sql = "INSERT INTO student VALUES (?, ?, ?)";

            PreparedStatement ps = con.prepareStatement(sql);

            ps.setInt(1, 101);
            ps.setString(2, "Charan");
            ps.setInt(3, 85);

            // Execute query
            ps.executeUpdate();

            System.out.println("Record inserted successfully!");

            // Close connection
            ps.close();
            con.close();
        }
        catch(Exception e) {
            System.out.println(e);
        }
    }
}
