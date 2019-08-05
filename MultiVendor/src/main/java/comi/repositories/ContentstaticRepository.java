package comi.repositories;

import comi.entities.Contentstatic;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

@Repository("ContentstaticRepository")
public interface ContentstaticRepository extends CrudRepository<Contentstatic, Integer> {
    @Query("from Contentstatic where code = :code")
    public Contentstatic findByCode(@Param("code") String code);
}
