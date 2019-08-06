package comi.repositories;

import comi.entities.Personinfo;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

@Repository("personInfoRepository")
public interface PersonInfoRepository extends CrudRepository<Personinfo, Integer> {
}
