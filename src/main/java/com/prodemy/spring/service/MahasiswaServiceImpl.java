/**
 * 
 */
package com.prodemy.spring.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.prodemy.spring.dao.MahasiswaDao;
import com.prodemy.spring.model.Mahasiswa;

/**
 * @author wyant
 *
 */
@Service
@Transactional
public class MahasiswaServiceImpl implements MahasiswaService {
	
	@Autowired
	private MahasiswaDao dao;

	@Override
	@Transactional
	public Mahasiswa findById(String id) throws Exception {
		return dao.findById(id);
	}

	@Override
	@Transactional
	public void deleteById(String id) throws Exception {
		dao.deleteById(id);
	}

	@Override
	@Transactional
	public void insert(Mahasiswa mhs) throws Exception {
		dao.insert(mhs);
	}

	@Override
	@Transactional
	public void update(Mahasiswa mhs) throws Exception {
		dao.update(mhs);
	}

	@Override
	@Transactional
	public List<Mahasiswa> findAll() throws Exception {
		return dao.findAll();
	}

}