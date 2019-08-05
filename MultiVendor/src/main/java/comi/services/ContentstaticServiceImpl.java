package comi.services;

import comi.entities.Contentstatic;
import comi.repositories.ContentstaticRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service("ContentstaticService")
@Transactional
public class ContentstaticServiceImpl implements ContentstaticService {
	
	@Autowired
	private ContentstaticRepository contentstaticRepository;

	@Override
	public Iterable<Contentstatic> findAll() {
		return this.contentstaticRepository.findAll();
	}

	@Override
	public Contentstatic find(String code) {
		return this.contentstaticRepository.findByCode(code);
	}

	@Override
	public Contentstatic save(Contentstatic contentstatic) {
		return this.contentstaticRepository.save(contentstatic);
	}
}
