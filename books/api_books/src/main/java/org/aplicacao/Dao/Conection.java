package main.java.org.aplicacao.Dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class Conection {
    private Connection Conexao;
    
    public Conection() {
       
    }
    
    public Connection getConnection() {
            try {
                this.Conexao = DriverManager.getConnection("Conexão com o banco");
                return this.Conexao;
        }catch(SQLException var2){
            
            throw new RuntimeException(var2);
        }
    }
}
