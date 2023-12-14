/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.akbar.nilai.entity;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

/**
 *
 * @author Dell
 */
@Entity
@Table
public class Nilai {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    private Long idmahasiswa;
    private String idmatakuliah;
    private float nilai;

    public Nilai() {
    }

    public Nilai(Long id, Long idmahasiswa, String idmatakuliah, float nilai) {
        this.id = id;
        this.idmahasiswa = idmahasiswa;
        this.idmatakuliah = idmatakuliah;
        this.nilai = nilai;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Long getIdmahasiswa() {
        return idmahasiswa;
    }

    public void setIdmahasiswa(Long idmahasiswa) {
        this.idmahasiswa = idmahasiswa;
    }

    public String getIdmatakuliah() {
        return idmatakuliah;
    }

    public void setIdmatakuliah(String idmatakuliah) {
        this.idmatakuliah = idmatakuliah;
    }

    public float getNilai() {
        return nilai;
    }

    public void setNilai(float nilai) {
        this.nilai = nilai;
    }

    @Override
    public String toString() {
        return "Nilai{" + "id=" + id + ", idmahasiswa=" + idmahasiswa + ", idmatakuliah=" + idmatakuliah + ", nilai=" + nilai + '}';
    }
}
