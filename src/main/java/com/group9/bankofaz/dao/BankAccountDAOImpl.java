package com.group9.bankofaz.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.group9.bankofaz.model.BankAccount;;

@Repository
@Transactional
public class BankAccountDAOImpl implements BankAccountDAO {	
	
	private SessionFactory sessionFactory;
	
	@Autowired
	public void setSessionFactory(SessionFactory sf) {
		this.sessionFactory = sf;
	}
	
	@Override
	public void add(BankAccount bankaccount) {		
		sessionFactory.getCurrentSession().save(bankaccount);		
	}

	@Override
	public void update(BankAccount bankaccount) {		
		sessionFactory.getCurrentSession().update(bankaccount);
	}

	@Override
	public void persist(BankAccount bankaccount) {
		sessionFactory.getCurrentSession().persist(bankaccount);
	}

	@Override
	public void delete(BankAccount bankaccount) {
		sessionFactory.getCurrentSession().delete(bankaccount);
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<BankAccount> findAccountsOfUser(int userid) {
		Session session = this.sessionFactory.getCurrentSession();
        List<BankAccount> accountList = session.createQuery("from BankAccount where userid = :userid")
        		.setInteger("userid", userid)
        		.list();
        
        return accountList;
	}
	

}
