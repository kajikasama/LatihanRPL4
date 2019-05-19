/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package latihanrpl4;

/**
 *
 * @author Pendeta Hakurei
 */
public class dataprogram {
    public String idprogram;
    public String namaprogram;
    
    public dataprogram (String id, String nama)
    {
        idprogram = id;
        namaprogram = nama;
    }
    public String toString()
    {
        return namaprogram;
    }
    
}
