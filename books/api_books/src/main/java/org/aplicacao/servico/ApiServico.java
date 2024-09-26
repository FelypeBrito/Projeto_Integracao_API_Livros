package main.java.org.aplicacao.servico;

import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.ObjectMapper;

import java.io.IOException;

import main.java.org.aplicacao.dto.BookDto;

import org.apache.http.HttpEntity;
import org.apache.http.client.methods.CloseableHttpResponse;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.impl.client.CloseableHttpClient;
import org.apache.http.impl.client.HttpClients;
import org.apache.http.util.EntityUtils;

public class ApiServico {
    private BookDto bookDto;

    public BookDto getDataBook(int id) throws IOException {
        try (CloseableHttpClient client = HttpClients.createDefault()) {
            HttpGet request = new HttpGet("https://stephen-king-api.onrender.com/api/book/" + id);
            try (CloseableHttpResponse response = client.execute(request)) {
                HttpEntity entity = response.getEntity();
                if (entity != null) {
                    String responseBody = EntityUtils.toString(entity);
                    ObjectMapper mapper = new ObjectMapper();
                    JsonNode rootNode = mapper.readTree(responseBody);
                    
                    // Obtém os dados da chave "data"
                    JsonNode dataNode = rootNode.path("data");
                    
                    // Converte o nó "data" para um objeto BookDto
                    bookDto = mapper.treeToValue(dataNode, BookDto.class);
                }
            }
        } catch (Exception e) {
            System.out.println(e.getMessage());
        }

        return bookDto;
    }
}
