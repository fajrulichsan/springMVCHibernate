/**
 * 
 */
package com.prodemy.spring.service;

import java.util.List;

import com.prodemy.spring.model.Mahasiswa;

/**
 * @author wyant
 *
 */
public interface MahasiswaService {
	public Mahasiswa findById(String id) throws Exception;
	public void deleteById(String id) throws Exception;
	public void insert(Mahasiswa mhs) throws Exception;
	public void update(Mahasiswa mhs) throws Exception;
	public List<Mahasiswa> findAll() throws Exception;
}