/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.akbar.nilai.service;

import com.akbar.nilai.entity.Nilai;
import com.akbar.nilai.repository.NilaiRepository;
import com.akbar.nilai.vo.Mahasiswa;
import com.akbar.nilai.vo.Matakuliah;
import com.akbar.nilai.vo.ResponseTemplateVo;
import java.util.List;
import java.util.Optional;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.client.RestTemplate;


/**
 *
 * @author Dell
 */
@Service
public class NilaiService {
    @Autowired
    private NilaiRepository nilaiRepository;
    
    @Autowired
    private RestTemplate restTemplate;
    
    public List<Nilai> getAllNilai(){
        return nilaiRepository.findAll();
    }
    
    public void insert(Nilai nilai){
        nilaiRepository.save(nilai);
    }
    
    public ResponseTemplateVo getNilai(Long idnilai){
        ResponseTemplateVo vo = new ResponseTemplateVo();
        Nilai nilai = nilaiRepository.findById(idnilai).get();
        
        Mahasiswa mahasiswa = 
                restTemplate.getForObject("http://localhost:9001/api/v1/mahasiswa/"+ 
                        nilai.getIdmahasiswa() , Mahasiswa.class);
        Matakuliah matakuliah = 
                restTemplate.getForObject("http://localhost:9002/api/v1/matakuliah/"+ 
                        nilai.getIdmatakuliah(), Matakuliah.class);   
        vo.setNilai(nilai);
        vo.setMahasiswa(mahasiswa);
        vo.setMatakuliah(matakuliah);
        return vo;
    }
}
