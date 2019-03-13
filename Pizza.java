/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pizza;

import java.io.FileNotFoundException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.io.UnsupportedEncodingException;
import java.util.Scanner;

/**
 *
 * @author mizar
 */
public class Pizza {
    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) throws FileNotFoundException, UnsupportedEncodingException {
        //Apertura de archivo
        InputStream is = Pizza.class.getClassLoader().getResourceAsStream("resources/rawContent");
        if ( is != null ){
            PrintWriter writer = new PrintWriter("processedContent", "UTF-8");
            Scanner reader = new Scanner( is );
            String lineRead = null;
            String[] fields = null;
            String firstField = null;
            String secondField = null;
            //writer.println("\t<td>"+ subfields[1] + "</td>");
            while ( reader.hasNextLine() ){
                lineRead = reader.nextLine();
                fields = lineRead.split("\\|");
                firstField = fields[0].trim();
                secondField = fields[1].trim();
                writer.println("<tr>");
                writer.println("\t<td>"+ firstField + "</td>");
                writer.println("\t<td>"+ secondField + "</td>");
                writer.println("</tr>");
            }
            writer.close();
        }
    }
}
