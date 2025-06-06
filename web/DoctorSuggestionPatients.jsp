<%-- 
    Document   : DoctorSchedulePatients1
    Created on : 8 Nov, 2019, 2:08:31 PM
    Author     : Ch.Sravani
--%>

<%@page import="com.app.utility.DBConnectionn"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            
        int id = Integer.parseInt(request.getParameter("id"));
        String pname = request.getParameter("name");
        String filename = request.getParameter("filename");
        String cdate = request.getParameter("cdate");
        String cfile = request.getParameter("cfile");
        String suggestion = request.getParameter("suggestion");
        //PatientUtility pu = new PatientUtility();
        
        Connection con = null;
        PreparedStatement ps = null;
        
        try {
                con = DBConnectionn.getConnection();
                String sqlQuery = "insert into patientsuggestion(pname,id,filename,cdate,cfile,suggestion) values(?,?,?,?,?,?)";
                ps = con.prepareStatement(sqlQuery);
                ps.setString(1, pname);
                ps.setInt(2, id);
                ps.setString(3, filename);
                ps.setString(4, cdate);
                ps.setString(5, cfile);
                ps.setString(6,suggestion);
                
                int no = ps.executeUpdate();
                if(no>0){
                //pu.updatePatientTreatMentSchedule(pid, treatmentdate);
                response.sendRedirect("patientfiles.jsp?msg=success");
                }
                
            } catch (Exception e) {
                System.out.println("Error at Patient Schedule "+e.getMessage());
                e.printStackTrace();
            }finally{
        try {
                ps.close();
                con.close();
            } catch (Exception e) {
            }
        }

        
        %>
    </body>
</html>
