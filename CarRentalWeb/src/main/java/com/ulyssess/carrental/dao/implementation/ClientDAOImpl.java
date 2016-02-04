package com.ulyssess.carrental.dao.implementation;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.ulyssess.carrental.dao.ClientDAO;
import com.ulyssess.carrental.entity.Client;
import com.ulyssess.carrental.entity.Contract;

@Repository
public class ClientDAOImpl extends EntityDAOAbstract<Client, String> implements ClientDAO {
	
	@PersistenceContext(unitName = "Primary")
	private EntityManager entityManager;

	public List<Contract> clientContracts(Client client) {
		// TODO Auto-generated method stub
		return null;
	}
	

}
