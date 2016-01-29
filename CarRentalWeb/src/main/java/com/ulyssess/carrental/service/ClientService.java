package com.ulyssess.carrental.service;

import java.util.List;

import com.ulyssess.carrental.entity.Client;

public interface ClientService {
	
	public Client findById(String id);
	
	public void add(Client client);
	
	public List<Client> findAll();
	
}
