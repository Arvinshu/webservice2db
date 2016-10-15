package com.arvin.xml;

import java.io.*;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLConnection;
import java.text.SimpleDateFormat;

import static com.sun.org.apache.xalan.internal.xsltc.compiler.sym.error;

/**
 * Created by Arvin on 2016/8/20.
 */
public class XMLGeter {
    private InputStream inputStream = null;
    private ByteArrayOutputStream baos = new ByteArrayOutputStream();

    private static final String SOAPUrl = "http://192.68.74.141/ws/GetData.asmx";
    private static final String SOAPAction = "http://tempuri.org/GetDataByInterFaceID";

    private void xmlFile2Send(File file) throws FileNotFoundException, IOException {
        FileInputStream fin = new FileInputStream(file);
        this.inputStream = fin;
        this.copy();
    }

    public void xmlFile2Send(String xmlString) throws IOException {
        ByteArrayInputStream bain = new ByteArrayInputStream(xmlString.getBytes());
        this.inputStream = bain;
        this.copy();
    }

    /***
     * // Copy the SOAP file to the open connection.
     * @throws IOException
     */
    private void copy() throws IOException {
        // do not allow other threads to read from the input or write to the output while copying is taking place
        synchronized (this.inputStream) {
            synchronized (this.baos) {
                byte[] buffer = new byte[256];
                while (true) {
                    int bytesRead = this.inputStream.read(buffer);
                    if (bytesRead == -1) break;
                    this.baos.write(buffer, 0, bytesRead);
                }
            }
        }
    }

    public BufferedReader executeRequest() throws IOException {
        BufferedReader in = null;
        URL url = new URL(SOAPUrl);
        URLConnection connection = url.openConnection();
        HttpURLConnection httpConn = (HttpURLConnection) connection;

        byte[] b = baos.toByteArray();

        // Set the appropriate HTTP parameters.
        httpConn.setRequestProperty("Content-Length", String.valueOf(b.length));
        httpConn.setRequestProperty("Content-Type", "text/xml; charset=utf-8");
        httpConn.setRequestProperty("SOAPAction", SOAPAction);
        httpConn.setRequestMethod("POST");
        httpConn.setDoOutput(true);
        httpConn.setDoInput(true);

        // Everything's set up; send the XML that was read in to b.
        OutputStream out = httpConn.getOutputStream();
        out.write(b);
        out.close();

        // Read the response and write it to standard out.
        in = new BufferedReader(new InputStreamReader(httpConn.getInputStream()));
        //File fileName = new File("C:\\Logs\\webservices.xml");
        //FileWriter fw = new FileWriter(fileName, true);
        return in;
    }

    public void writeToFile(BufferedReader bufferedReader, String filePath) throws IOException {
        File file = new File(filePath);

        BufferedWriter bufferedWriter = new BufferedWriter(new FileWriter(file,true));
        bufferedWriter.write(bufferedReader.readLine());
        bufferedWriter.newLine();
        bufferedWriter.flush();
        bufferedWriter.close();
    }

}
