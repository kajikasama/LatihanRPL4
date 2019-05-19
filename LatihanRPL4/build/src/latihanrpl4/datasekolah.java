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
public class datasekolah {
    public String idsekolah;
    public String namasekolah;
    
    public datasekolah (String id, String nama)
    {
        idsekolah = id;
        namasekolah = nama;
    }
    public String toString()
    {
        return idsekolah;
    }
    
}