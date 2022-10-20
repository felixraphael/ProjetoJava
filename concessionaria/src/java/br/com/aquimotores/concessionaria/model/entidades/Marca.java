/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package br.com.aquimotores.concessionaria.model.entidades;

/**
 *
 * @author 39127512021.1
 */
public class Marca {
    private long idMarca; // private mantem itens da classe privada e long é usada para número grandes
    private String nome;
    public long getIdMarca(){
        return this.idMarca; 
    }
     public void setIdMarca(long id){
         this.idMarca = id;
      
     }
     public String getNome(){
         return this.nome;
     }
     
     public void setNome(String n){
     this.nome = n;
     }
}
