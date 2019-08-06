package comi.services;

import comi.entities.Personinfo;

import java.util.List;

public interface PersonInfoService {

    public Iterable<Personinfo> findAll();
    public Personinfo find(int id);
    public Personinfo save(Personinfo personinfo);
    public void delete(int id);
}
