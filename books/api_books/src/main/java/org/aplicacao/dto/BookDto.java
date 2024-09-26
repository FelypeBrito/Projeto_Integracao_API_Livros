package main.java.org.aplicacao.dto;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

import com.fasterxml.jackson.annotation.JsonProperty;

import java.util.List;

@JsonIgnoreProperties(ignoreUnknown = true)
public class BookDto {
       private int id; // Identificador
       @JsonProperty("Year")
       private int ano; // Ano
       @JsonProperty("Title")
       private String titulo; // Título
       @JsonProperty("handle")
       private String identificador; // Identificador (ou "slug")
       @JsonProperty("Publisher")
       private String editora; // Editora
       @JsonProperty("ISBN")
       private String isbn; // ISBN
       @JsonProperty("Pages")
       private int paginas; // Páginas
       @JsonProperty("created_at")
       private String criadoEm; // Criado em


    public void setAno(int ano) {
        this.ano = ano;
    }

    public int getAno() {
        return ano;
    }

    public void setTitulo(String titulo) {
        this.titulo = titulo;
    }

    public String getTitulo() {
        return titulo;
    }

    public void setIdentificador(String identificador) {
        this.identificador = identificador;
    }

    public String getIdentificador() {
        return identificador;
    }

    public void setEditora(String editora) {
        this.editora = editora;
    }

    public String getEditora() {
        return editora;
    }

    public void setPaginas(int paginas) {
        this.paginas = paginas;
    }

    public int getPaginas() {
        return paginas;
    }

    public void setCriadoEm(String criadoEm) {
        this.criadoEm = criadoEm;
    }

    public String getCriadoEm() {
        return criadoEm;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getId() {
        return id;
    }

    public void setIsbn(String isbn) {
        this.isbn = isbn;
    }

    public String getIsbn() {
        return isbn;
    }


}
