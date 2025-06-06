/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.app.action;


import com.app.utility.DBConnectionn;
import com.app.utility.EncryptionAlgoritham;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

/**
 *
 * @author Arumalla
 */
@MultipartConfig
public class PatientFileUpload extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        String filename = request.getParameter("filename");
       System.out.println("File Name "+filename);
        Part filePart = request.getPart("file");
        InputStream is = filePart.getInputStream();
        //String fileName = filePart.getSubmittedFileName();
        HttpSession hs = request.getSession();
        String name = hs.getAttribute("name").toString();
        System.out.println("File Name "+filename);
        InputStreamReader isReader = new InputStreamReader(is);
        BufferedReader reader = new BufferedReader(isReader);
        StringBuffer sb = new StringBuffer();
        String str;
        String data = null;
        while ((str = reader.readLine()) != null) {
            sb.append(str);
        }
        data = sb.toString();
        //String cipher = AESImple.encrypt(data);
        
        Connection con = null;
        PreparedStatement ps = null;        
        java.sql.Date cDate = new java.sql.Date(new java.util.Date().getTime());
        try  {
            String cipher = EncryptionAlgoritham.encrypt(data);//AESImple.encrypt(data);
            con = DBConnectionn.getConnection();
            String sqlQuery = "insert into patientfiles(name,filename,cdate,cfile) values(?,?,?,?)";
            ps = con.prepareStatement(sqlQuery);
            ps.setString(1, name);
            ps.setString(2, filename);
            //ps.setString(3,file);
            ps.setDate(3, cDate);
            ps.setString(4, cipher);
            int no = ps.executeUpdate();
            if(no>0){
            response.sendRedirect("fileupload.jsp?msg=success");
            }else{
            response.sendRedirect("fileupload.jsp?msg=failed");
            }
           is.close();
        }catch(Exception ex){
            System.out.println(" Error at "+ex.getMessage());
            response.sendRedirect("fileupload.jsp?msg=failed");
        }finally{
            try {
                ps.close();
                con.close();
            } catch (Exception e) {
            }
        }
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
