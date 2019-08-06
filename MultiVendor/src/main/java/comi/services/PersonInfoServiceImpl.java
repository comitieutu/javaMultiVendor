package comi.services;

import comi.entities.Personinfo;
import comi.repositories.PersonInfoRepository;
import org.springframework.beans.factory.annotation.Autowired;

public class PersonInfoServiceImpl implements PersonInfoService {

    @Autowired
    private PersonInfoRepository personInfoRepository;

    @Override
    public Iterable<Personinfo> findAll() {
        return personInfoRepository.findAll();
    }

    @Override
    public Personinfo find(int id) {
        return personInfoRepository.findById(id).get();
    }

    @Override
    public Personinfo save(Personinfo personinfo) {
        return personInfoRepository.save(personinfo);
    }

    @Override
    public void delete(int id) {
        personInfoRepository.deleteById(id);
    }
}
