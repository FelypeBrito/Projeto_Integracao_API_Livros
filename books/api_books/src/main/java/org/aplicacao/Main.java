package main.java.org.aplicacao;

import java.io.IOException;

import java.sql.*;

import java.util.Date;

import java.text.SimpleDateFormat;

import main.java.org.aplicacao.dto.BookDto;
import main.java.org.aplicacao.servico.ApiServico;

public class Main {

    private Connection con;

    public Main() {
    }

    public static void main(String[] args) throws IOException, Exception {
        ApiServico apiServico = new ApiServico();

        for (;;) {
            int v_id = lerDado();
            if (v_id > 0) {
                gravaDados(v_id);
            }
        }
    }


    private static int lerDado() {
        Main con = new Main();
        Connection conc = con.getConnection();
        int v_id = 0;

        try {
            Statement stmt = conc.createStatement();
            ResultSet rs = stmt.executeQuery("SELECT id_livro from dados_comunicacao_book where flag = 0");

            if (rs.next()) {
                v_id = rs.getInt("id_livro");
            }

            rs.close();
            stmt.close();
            con.close();

        } catch (SQLException e) {
            e.printStackTrace();
        }


        return v_id;
    }

    public Connection getConnection() {

        try {
            this.con = DriverManager.getConnection("Conexão com o banco");
            return this.con;
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    public void close() {
        try {
            if (this.con != null && !this.con.isClosed()) {
                this.con.close();
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    private static void gravaDados(int v_id) throws IOException, Exception {
        Main con = new Main();
        Connection conc = con.getConnection();

        try {
            String sql =
                "INSERT INTO book(id_livro,ano,titulo,identificador,editora,isbn,paginas,criadoEm) VALUES(?,?,?,?,?,?,?,?)";

            ApiServico apiServico = new ApiServico();

            BookDto bookDto = apiServico.getDataBook(v_id);

            if (bookDto == null) {
                System.out.println("N�o foi possivel encontrar o livro cujo ID seja: " + v_id);
                String updateQuery = "UPDATE dados_comunicacao_book SET flag = 2 WHERE id_livro = ?";
                PreparedStatement pstmt = conc.prepareStatement(updateQuery);
                pstmt.setInt(1, v_id);
                pstmt.executeUpdate();
                pstmt.close();
                return;
            }


            PreparedStatement ps = conc.prepareStatement(sql);
            ps.setInt(1, bookDto.getId());
            ps.setInt(2, bookDto.getAno());
            ps.setString(3, bookDto.getTitulo());
            ps.setString(4, bookDto.getIdentificador());
            ps.setString(5, bookDto.getEditora());
            ps.setString(6, bookDto.getIsbn());
            ps.setInt(7, bookDto.getPaginas());

            String createdAtString = bookDto.getCriadoEm();
            Timestamp createdAt = convertToTimestamp(createdAtString);

            ps.setTimestamp(8, createdAt);

            
            int rowsAffected = ps.executeUpdate();
            System.out.println("Teste: " + bookDto.getId());

            if (rowsAffected > 0) {

                String updateQuery = "UPDATE dados_comunicacao_book SET flag = 1 WHERE id_livro = ?";
                PreparedStatement pstmt = conc.prepareStatement(updateQuery);
                pstmt.setInt(1, bookDto.getId());
                pstmt.executeUpdate();
                pstmt.close();
            }

            con.close();

        } catch (SQLException e) {
            throw new RuntimeException(e);


        }

    }

    public static Timestamp convertToTimestamp(String createdAt) throws Exception {
        SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss.SSS'Z'");
        Date date = formatter.parse(createdAt);
        return new Timestamp(date.getTime());
    }
}
