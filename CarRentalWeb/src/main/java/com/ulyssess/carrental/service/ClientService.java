package com.ulyssess.carrental.service;

import java.util.List;

import com.ulyssess.carrental.entity.Client;

public interface ClientService {
	
	public Client findByLogin(String login);
	
	public void add(Client client);
	
	public List<Client> findAll();

	public void update(Client client);
	
}
