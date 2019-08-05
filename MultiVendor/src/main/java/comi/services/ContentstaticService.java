package comi.services;

import comi.entities.Contentstatic;

public interface ContentstaticService {

	public Iterable<Contentstatic> findAll();
	public Contentstatic find(String code);
	public Contentstatic save(Contentstatic contentstatic);
}
