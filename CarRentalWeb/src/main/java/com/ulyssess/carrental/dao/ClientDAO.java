package com.ulyssess.carrental.dao;

import java.util.List;

import com.ulyssess.carrental.entity.Client;
import com.ulyssess.carrental.entity.Contract;

public interface ClientDAO extends EntityDAO<Client, String> {
	
	public List<Contract> clientContracts(Client client);
	
}
