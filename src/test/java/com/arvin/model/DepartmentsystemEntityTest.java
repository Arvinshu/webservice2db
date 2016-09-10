package com.arvin.model;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

import org.junit.Test;
import org.junit.Before;
import org.junit.After;
import org.junit.Ignore;

import java.util.Iterator;
import java.util.List;

/**
 * DepartmentsystemEntity Tester.
 *
 * @author arvin shu
 * @version 1.0
 * @since <pre>sep 10, 2016</pre>
 */
public class DepartmentsystemEntityTest {
    private static SessionFactory sessionFactory = null;

    @Before
    public void before() throws Exception {
        try {
            sessionFactory = new Configuration().configure("hibernate.xml").buildSessionFactory();  //configure()方法可以重载，以指定hibernate配置文件
        } catch (HibernateException e) {
            e.printStackTrace();
        }
    }

    @After
    public void after() throws Exception {
        sessionFactory.close();
    }

    /**
     * Method: test()
     */
    @Test
    public void test() throws Exception {
        DepartmentsystemEntity s = new DepartmentsystemEntity();

        Session session = sessionFactory.openSession();
        String hql = "select distinct p from DepartmentsystemEntity p";
        List aaa = session.createQuery(hql).list();
        System.out.println("----------------------------显示时间--------------------------------------");
        for(Iterator iterator = aaa.iterator(); iterator.hasNext();) {
            DepartmentsystemEntity d = (DepartmentsystemEntity) iterator.next();
            System.out.println(d.getCreateTime());
        }
    }































} 
