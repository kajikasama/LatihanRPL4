/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package latihanrpl4;

/**
 *
 * @author Tsukiha Kajika
 */
public class datacombobox {
    public String idkota;
    public String namakota;
    
    public datacombobox (String id, String nama)
    {
        idkota = id;
        namakota = nama;
    }
    public String toString()
    {
        return namakota;
    }
    
}

