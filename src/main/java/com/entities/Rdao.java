package com.entities;


import java.util.List;

import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;
import org.hibernate.query.Query;

public class Rdao {
	public void add(Note s)
	{
		Session session=new Configuration().configure("hibernate.cfg.xml").buildSessionFactory().openSession();
		Transaction tx=session.beginTransaction();
		session.save(s);
		tx.commit();
		session.close();
	}
	public List<Note> show()
	{
		Session session=new Configuration().configure("hibernate.cfg.xml").buildSessionFactory().openSession();
		Query qr=session.createQuery("from Note");
		return qr.list();
	}
	public int delete(int id){
		Session session=new Configuration().configure("hibernate.cfg.xml").buildSessionFactory().openSession();
		Transaction tx=session.beginTransaction();
		Query qr=session.createQuery("delete from Note where id=:id");
		qr.setParameter("id",id);
		int i=qr.executeUpdate();
		tx.commit();
		session.close();
		return i;
	}
	public int update(Note n){
		Session session=new Configuration().configure("hibernate.cfg.xml").buildSessionFactory().openSession();
		Transaction tx=session.beginTransaction();
		Query qr=session.createQuery("update Note set content=:content where id=:id");
		qr.setParameter("id",n.getId());
		qr.setParameter("content",n.getContent());
		int i=qr.executeUpdate();
		tx.commit();
		session.close();
		return i;
	}
	public List<Note> target(String title){
		Session session=new Configuration().configure().buildSessionFactory().openSession();
		Query qr=session.createQuery("from Note where title=:title");
		qr.setParameter("title",title);
		return qr.list();
	}
}
