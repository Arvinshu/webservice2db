package com.arvin.xml;

import java.util.Iterator;
import javax.xml.XMLConstants;
import javax.xml.namespace.NamespaceContext;


/**
 * Created by Arvin on 2016/8/23.
 */
public class PersonalNamespaceContext implements NamespaceContext {
    public String getNamespaceURI(String prefix) {
        if (prefix == null)
            throw new NullPointerException("Null prefix");
        else if ("pre".equals(prefix))
            return "http://www.example.org/books";
        else if ("xml".equals(prefix))
            return XMLConstants.XML_NS_URI;
        return XMLConstants.NULL_NS_URI;
    }

    // This method isn't necessary for XPath processing.
    public String getPrefix(String uri) {
        throw new UnsupportedOperationException();
    }

    // This method isn't necessary for XPath processing either.
    public Iterator getPrefixes(String uri) {
        throw new UnsupportedOperationException();
    }
}
