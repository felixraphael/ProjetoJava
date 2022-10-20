/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package br.com.aquimotores.concessionaria.model.dao;

import br.com.aquimotores.concessionaria.model.entidades.Marca;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author 39127512021.1
 */
public class MarcaDao extends Conexao {
  
    public void incluir(Marca m){
    
        try{
        String sql = "insert into marca(nome)"
                +" values(?)";
        
        PreparedStatement ps = criarConexao().prepareStatement(sql);
        ps.setString(1, m.getNome());
        
        ps.execute();
        } catch (Exception e) {
            System.out.println("Conexão Inválida");
        
        }
        
    }
    public List<Marca> listar(String nomeBusca){
        
        List<Marca> lista = new ArrayList<Marca>();
        
        try{
            String sql = "select * from marca "
                       + "where nome like ? "
                       + "order by nome";
        
        PreparedStatement ps = criarConexao().prepareStatement(sql);
        ps.setString(1, "%"+nomeBusca+"%");
        
        ResultSet rs = ps.executeQuery();
        Marca m  = null;
        while(rs.next()){
        m = new Marca();
        m.setIdMarca(rs.getLong("idMarca"));
        m.setNome(rs.getString("nome"));
        
        lista.add(m);
        }
        }  catch(Exception e) {
            System.out.println("Cenexão invalida");
        }
        return lista;
    
    }

    public void excluir(Long id) {
      try{
      String sql = "delete from Marca"
                 +" where idMarca = ?";

PreparedStatement ps = criarConexao().prepareStatement(sql);
ps.setLong(1, id);
ps.execute();
      } catch(Exception e){
          System.out.println("Conexão Inválida");
          e.printStackTrace();
      }
      
    }

    public Marca buscar(Long id) {
        Marca m = null;

        try{
            String sql = "select * from marca "
                       + "where idMarca = ? ";
         
        
        PreparedStatement ps = criarConexao().prepareStatement(sql);
        ps.setLong(1, id);
        
        ResultSet rs = ps.executeQuery();
        if(rs.next()){
        m = new Marca();
        m.setIdMarca(rs.getLong("idMarca"));
        m.setNome(rs.getString("nome"));
        
        }
        }  catch(Exception e) {
            System.out.println("Cenexão invalida");
        }
        return m;
    }

    public void alterar(Marca m) {
        try{
            String sql = "update marca set nome = ? where idmarca = ?";
            
            PreparedStatement ps = criarConexao().prepareStatement(sql);
            
            ps.setString(1, m.getNome());
            ps.setLong(2, m.getIdMarca());
            
            ps.executeUpdate();
        }catch(Exception e){
        e.printStackTrace();
        }
    }
    
}
