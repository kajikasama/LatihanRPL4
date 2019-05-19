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
public class datakota {
    public String idkota;
    public String namakota;
    
    public datakota (String id, String nama)
    {
        idkota = id;
        namakota = nama;
    }
    public String toString()
    {
        return namakota;
    }
    
}