package com.odp_bni_330.web.model;

import jakarta.persistence.*;

@Entity
@Table(name = "member")
public class Member {

    @Id
    @Column(name = "npp", nullable = false, unique = true)
    private String npp; // Nomor Pokok Pegawai, sebagai ID unik

    @Column(name = "nama")
    private String namaPeserta;

    @Column(name = "no_hp")
    private String noHpAktif;

    @Column(name = "email")
    private String alamatEmail;

    // Getters & Setters

    public String getNpp() {
        return npp;
    }

    public void setNpp(String npp) {
        this.npp = npp;
    }

    public String getNamaPeserta() {
        return namaPeserta;
    }

    public void setNamaPeserta(String namaPeserta) {
        this.namaPeserta = namaPeserta;
    }

    public String getNoHpAktif() {
        return noHpAktif;
    }

    public void setNoHpAktif(String noHpAktif) {
        this.noHpAktif = noHpAktif;
    }

    public String getAlamatEmail() {
        return alamatEmail;
    }

    public void setAlamatEmail(String alamatEmail) {
        this.alamatEmail = alamatEmail;
    }
}
