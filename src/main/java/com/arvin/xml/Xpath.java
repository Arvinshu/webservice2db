package com.arvin.xml;

import org.dom4j.Document;
import org.dom4j.Node;
import org.dom4j.io.SAXReader;
import org.dom4j.Element;

import javax.xml.parsers.DocumentBuilderFactory;
import java.io.File;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/**
 * Created by Arvin on 2016/8/21.
 */
public class Xpath {
    public void parseBooks(){
        SAXReader reader = new SAXReader();
        try {
            Document doc = reader.read("C:\\Logs\\temp\\6687port.xml");
            //Node root = doc.selectSingleNode("/books");
            List list = doc.selectNodes("/soap:Envelope/soap:Body");
            Iterator iterator = list.iterator();
            while (iterator.hasNext()) {
                Element element = (Element) iterator.next();
                System.out.println(element.getName());
            }

            /*
            for(Object o:list){

                Element e = (Element) o;
                String show=e.attributeValue("show");
                System.out.println("show = " + show);
            }
            */

        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public static void main(String[] args) throws Exception {
        //Xpath xpath = new Xpath();
        //xpath.parseBooks();

        SAXReader saxReader = new SAXReader();
        File file = new File("test.xml");
        Document document = saxReader.read(file);
        Map<String, String> xmlMap = new HashMap<String, String>();
        xmlMap.put("default", "http://www.w3.org/2003/05/soap-envelope");

        List tmp = document.selectNodes("//*[local-name()='report' and namespace-uri()='http://www.eclipse.org/birt/2005/design']/* [local-name()='list-property']");
        Iterator iterator = tmp.iterator();
        if (iterator.hasNext()) {
            System.out.println(document.getRootElement());
        }
        System.out.println(tmp.size());
    }

}
