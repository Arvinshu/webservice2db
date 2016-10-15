package com.arvin.xml;

import java.io.*;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.ParserConfigurationException;
import javax.xml.xpath.XPathConstants;
import javax.xml.xpath.XPathExpression;
import javax.xml.xpath.XPathExpressionException;
import javax.xml.xpath.XPathFactory;

import org.dom4j.Document;
import org.dom4j.DocumentException;
import org.dom4j.Element;
import org.dom4j.XPath;
import org.dom4j.io.SAXReader;
import org.w3c.dom.NodeList;
import org.xml.sax.SAXException;

/**
 * DOM4JDOMXMLXPath
 * http://blog.csdn.net/moodytong/article/details/8631295
 * Created by Arvin on 2016/8/23.
 */
public class TestDom4jXpath {
    private String Xmlfile = "aaxmlwithnamespacetest.xml";
    public static void main(String[] args) {
        read1();
        //read2();
        //read3();
        //read4();//read3（）方法一样，但是XPath表达式不同
        //read5();
    }

    public static Document parse2Document(String xmlFilePath) {
        SAXReader reader = new SAXReader();
        Document document = null;
        try {
            File f = new File(xmlFilePath);
            InputStream in = new FileInputStream(f);
            document = reader.read(in);
        } catch (DocumentException e) {
            System.out.println(e.getMessage());
            System.out.println("读取classpath下xmlFileName文件发生异常，请检查CLASSPATH和文件名是否存在！");
            e.printStackTrace();
        } catch (FileNotFoundException e) {
            System.out.println(e.getMessage());
        }
        System.out.println("Read over~~");
        return document;
    }
    
    public static void read1() {
/*
*uselocal-name()andnamespace-uri()inXPath
*/
        try {
            long startTime = System.currentTimeMillis();
            SAXReader reader = new SAXReader();
            InputStream in = TestDom4jXpath.class.getClassLoader().getResourceAsStream("aaxmlwithnamespacetest.xml");
            Document doc = parse2Document("aaxmlwithnamespacetest.xml");
/*Stringxpath="//*[local-name()='Workbook'andnamespace-uri()='urn:schemas-microsoft-com:office:spreadsheet']"
+"/*[local-name()='Worksheet']"
+"/*[local-name()='Table']"
+"/*[local-name()='Row'][4]"
+"/*[local-name()='Cell'][3]"
+"/*[local-name()='Data'][1]";*/
            String xpath = "//*[local-name()='Row'][4]/*[local-name()='Cell'][3]/*[local-name()='Data'][1]";
            System.err.println("=====uselocal-name()andnamespace-uri()inXPath====");
            System.err.println("XPath：" + xpath);
            @SuppressWarnings("unchecked")
            List<Element> list = doc.selectNodes(xpath);
            for (Object o: list) {
                Element e = (Element) o;
                String show = e.getStringValue();
                System.out.println("show=" + show);
                long endTime = System.currentTimeMillis();
                System.out.println("程序运行时间：" + (endTime - startTime) + "ms");
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public static void read2() {
/*
*setxpathnamespace(setNamespaceURIs)
*/
        try {
            long startTime = System.currentTimeMillis();
            Map map = new HashMap();
            map.put("Workbook", "urn:schemas-microsoft-com:office:spreadsheet");
            SAXReader reader = new SAXReader();
            //InputStream in = TestDom4jXpath.class.getClassLoader().getResourceAsStream("xoomlwithnamespacetest.xml");
            //Document doc = reader.read(in);
            Document doc = parse2Document("aaxmlwithnamespacetest.xml");
            String xpath = "//Workbook:Row[4]/Workbook:Cell[3]/Workbook:Data[1]";
            System.err.println("=====usesetNamespaceURIs()tosetxpathnamespace====");
            System.err.println("XPath：" + xpath);
            XPath x = doc.createXPath(xpath);
            x.setNamespaceURIs(map);
            @SuppressWarnings("unchecked")
            List<Element> list = x.selectNodes(doc);
            for (Object o:
                 list) {
                Element e = (Element) o;
                String show = e.getStringValue();
                System.out.println("show=" + show);
                long endTime = System.currentTimeMillis();
                System.out.println("程序运行时间：" + (endTime - startTime) + "ms");
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public static void read3() {
/*
*setDocumentFactory()namespace(setXPathNamespaceURIs)
*/
        try {
            long startTime = System.currentTimeMillis();
            Map map = new HashMap();
            map.put("Workbook", "urn:schemas-microsoft-com:office:spreadsheet");
            SAXReader reader = new SAXReader();
            //InputStream in = TestDom4jXpath.class.getClassLoader().getResourceAsStream("aaaxmlwithnamespacetest.xml");

            reader.getDocumentFactory().setXPathNamespaceURIs(map);
            //Document doc = reader.read(in);
            Document doc = parse2Document("aaxmlwithnamespacetest.xml");
            String xpath = "//Workbook:Row[4]/Workbook:Cell[3]/Workbook:Data[1]";
            System.err.println("=====usesetXPathNamespaceURIs()tosetDocumentFactory()namespace====");
            System.err.println("XPath：" + xpath);
            @SuppressWarnings("unchecked")
            List<Element> list = doc.selectNodes(xpath);
            for (Object o:
                 list) {
                Element e = (Element) o;
                String show = e.getStringValue();
                System.out.println("show=" + show);
                long endTime = System.currentTimeMillis();
                System.out.println("程序运行时间：" + (endTime - startTime) + "ms");
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public static void read4() {
/*
*同read3（）方法一样，但是XPath表达式不同
*/
        try {
            long startTime = System.currentTimeMillis();
            Map map = new HashMap();
            map.put("Workbook", "urn:schemas-microsoft-com:office:spreadsheet");
            SAXReader reader = new SAXReader();
            //InputStream in = TestDom4jXpath.class.getClassLoader().getResourceAsStream("aaxmlwithnamespacetest.xml");
            reader.getDocumentFactory().setXPathNamespaceURIs(map);
            //Document doc = reader.read(in);
            Document doc = parse2Document("aaxmlwithnamespacetest.xml");
            String xpath = "//Workbook:Worksheet/Workbook:Table/Workbook:Row[4]/Workbook:Cell[3]/Workbook:Data[1]";
            System.err.println("=====usesetXPathNamespaceURIs()tosetDocumentFactory()namespace====");
            System.err.println("XPath：" + xpath);
            @SuppressWarnings("unchecked")
            List<Element> list = doc.selectNodes(xpath);
            for (Object o:
                 list) {
                Element e = (Element) o;
                String show = e.getStringValue();
                System.out.println("show=" + show);
                long endTime = System.currentTimeMillis();
                System.out.println("程序运行时间：" + (endTime - startTime) + "ms");
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public static void read5() {
/*
*DOMandXPath
*/
        try {
            long startTime = System.currentTimeMillis();
            DocumentBuilderFactory dbf = DocumentBuilderFactory.newInstance();
            dbf.setNamespaceAware(false);
            DocumentBuilder builder = dbf.newDocumentBuilder();
            InputStream in = TestDom4jXpath.class.getClassLoader().getResourceAsStream("aaxmlwithnamespacetest.xml");
            org.w3c.dom.Document doc = builder.parse(in);
            XPathFactory factory = XPathFactory.newInstance();
            javax.xml.xpath.XPath x = factory.newXPath();
//选取所有class元素的name属性
            String xpath = "//Workbook/Worksheet/Table/Row[4]/Cell[3]/Data[1]";
            System.err.println("=====DomXPath====");
            System.err.println("XPath：" + xpath);
            XPathExpression expr = x.compile(xpath);
            NodeList nodes = (NodeList) expr.evaluate(doc, XPathConstants.NODE);
            for (int i = 0; i < nodes.getLength(); i++) {
                System.out.println("show=" + nodes.item(i).getNodeValue());
                long endTime = System.currentTimeMillis();
                System.out.println("程序运行时间：" + (endTime - startTime) + "ms");
            }
        } catch (XPathExpressionException e) {
            e.printStackTrace();
        } catch (ParserConfigurationException e) {
            e.printStackTrace();
        } catch (SAXException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}
