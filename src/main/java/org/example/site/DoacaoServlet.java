package org.example.site;

import java.io.*;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import java.sql.*;

public class DoacaoServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String nome = request.getParameter("nome");
        String email = request.getParameter("email");
        float valor = 0;
        try {
            valor = Float.parseFloat(request.getParameter("valor"));
        } catch (NumberFormatException e) {
            response.sendRedirect("erro.jsp?error=Valor inválido"); // Mensagem de erro para valor inválido
            return;
        }
        String mensagem = request.getParameter("mensagem");

        Connection connection = null;
        PreparedStatement preparedStatement = null;
        String jdbcURL = "jdbc:postgresql://localhost:5433/tba";  // Ajuste para seu banco
        String jdbcUsername = "postgres";
        String jdbcPassword = "minhasenha";

        try {
            // Carregar o driver JDBC para PostgreSQL
            Class.forName("org.postgresql.Driver");

            // Estabelecer a conexão com o banco de dados
            connection = DriverManager.getConnection(jdbcURL, jdbcUsername, jdbcPassword);
            if (connection == null) {
                response.sendRedirect("erro.jsp?error=Não foi possível conectar ao banco de dados");
                return;
            }

            // Verificar se a tabela "doacoes" existe, caso contrário criar
            Statement statement = connection.createStatement();
            ResultSet rs = statement.executeQuery("SELECT to_regclass('public.doacoes');");
            if (!rs.next() || rs.getString(1) == null) {
                String createTableSQL = "CREATE TABLE doacoes ("
                        + "id SERIAL PRIMARY KEY, "
                        + "nome VARCHAR(255) NOT NULL, "
                        + "email VARCHAR(255) NOT NULL, "
                        + "valor DECIMAL(10, 2) NOT NULL, "
                        + "mensagem TEXT)";
                statement.executeUpdate(createTableSQL);
                System.out.println("Tabela 'doacoes' criada com sucesso!");
            }

            // SQL para inserir dados na tabela de doações
            String sql = "INSERT INTO doacoes (nome, email, valor, mensagem) VALUES (?, ?, ?, ?)";
            preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1, nome);
            preparedStatement.setString(2, email);
            preparedStatement.setFloat(3, valor);
            preparedStatement.setString(4, mensagem);

            // Executar a inserção no banco
            int row = preparedStatement.executeUpdate();

            if (row > 0) {
                // Se a inserção foi bem-sucedida, redirecionar para uma página de sucesso
                response.sendRedirect("sucesso.jsp");
            } else {
                // Caso contrário, redirecionar para uma página de erro
                response.sendRedirect("erro.jsp?error=Falha ao salvar a doação");
            }
        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
            response.sendRedirect("erro.jsp?error=Erro ao acessar o banco de dados");
        } finally {
            // Fechar a conexão com o banco de dados
            try {
                if (preparedStatement != null) preparedStatement.close();
                if (connection != null) connection.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }
}
