package com.arvin.xml;


import org.dom4j.Element;
import org.dom4j.Node;
import org.dom4j.io.DOMReader;
import org.dom4j.io.SAXReader;
//import org.w3c.dom.Document;
import org.dom4j.Document;


import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import java.io.File;
import java.util.Iterator;
import java.util.List;

/**
 * Created by Arvin on 2016/8/21.
 */
public class domreader {
    public static void main(String[] args) throws Exception {
        // 不使用开发环境给你提供的一系列对象，而是用XPath语法中自带的local-name() 和 namespace-uri()
        // 指定你要使用的节点名和命名空间
        SAXReader reader = new SAXReader();
        Document document = reader.read(new File("test.xml"));

        Node name = document
                .selectSingleNode("//*[local-name()='RIV_Name' and namespace-uri()='http://www.w3.org/2003/05/soap-envelope']");
        System.out.println(name.getText());
    }
}
