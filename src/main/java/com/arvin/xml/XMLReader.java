package com.arvin.xml;

import org.dom4j.Document;
import org.dom4j.DocumentException;
import org.dom4j.Element;
import org.dom4j.io.SAXReader;

import java.util.*;

/**
 * Created by Arvin on 2016/8/19.
 * http://blog.csdn.net/chenghui0317/article/details/11486271
 */
public class XMLReader {

    private static List<Map<String, String>> dataElement = new LinkedList<Map<String, String>>();

    private static Element aaaaaaaa = null;

    /**
     * 获取根元素
     *
     * @return
     * @throws DocumentException
     */
    public Element getRootElement(String xmlPath) throws DocumentException {
        SAXReader saxReader = new SAXReader();
        Document srcdoc = saxReader.read(xmlPath);
        //Document srcdoc = DocumentHelper.parseText();
        Element elem = srcdoc.getRootElement();
        return elem;
    }

    /**
     * 递归遍历方法
     *
     * @param element
     */
    public void recursiveElementList(Element element) {
        List elements = element.elements();
        if (elements.size() != 0) {  //如果有子节点
            for (Iterator it = elements.iterator(); it.hasNext(); ) {  //遍历子节点
                Element elem = (Element) it.next();
                if (elem.getName().equals("DocumentElement")) {
                    //getElementMap(elem);
                    aaaaaaaa = elem;
                    return;
                } else
                    recursiveElementList(elem);
            }
        }
    }

    /**
     * 递归遍历传入节点的数据，将数据的值存入Map
     *
     * @param
     */
    public void getElementMap(/*Element element*/) {
        List elements = aaaaaaaa.elements();
        Map<String, String> map = new LinkedHashMap<String, String>();  //使用LinkedHashMap保证写入和读取的顺序一致

        if (elements.size() != 0) {
            System.out.println(elements.size());
            System.out.println("--------------------------------------------------------------------------------");
            for (Iterator i = elements.iterator(); i.hasNext(); ) {
                Element aaa = (Element) i.next();
                List bbb = aaa.elements();
                System.out.println(aaa.getName() );
                for(Iterator j = bbb.iterator(); j.hasNext();) {
                    Element ccc = (Element) j.next();
                    System.out.println("键：" + ccc.getName() + "\t 值："+ ccc.getTextTrim());
                }
            }
        }
    }

    /***
     * 遍历list中的元素，获取到每个Map后再遍历Map，输出Map<KEY,VALUE>
     * @param
     */
    public void getDataElement() {
        List<Map<String, String>> dataElement = this.dataElement;
        StringBuffer stringBuffer = new StringBuffer();
        System.out.println("list 长度： " + dataElement.size());

        for (Map<String, String> m : dataElement) {
            Iterator<Map.Entry<String, String>> iterator = m.entrySet().iterator();
            while (iterator.hasNext()) {
                Map.Entry<String, String> entry = iterator.next();
                System.out.println("键： " + entry.getKey() + "\t值：" + entry.getValue());
            }

        }
    }
}