package Model;

public class CadastroModel {

    private int id;
    private String nome, senha, email;
    
    public void CadastroModel(){}

    public CadastroModel(int id, String nome, String senha, String email) {
        this.id = id;
        this.nome = nome;
        this.senha = senha;
        this.email = email;
    }

    public CadastroModel(){}
    
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getSenha() {
        return senha;
    }

    public void setSenha(String senha) {
        this.senha = senha;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    @Override
    public String toString() {
        return "CadastroModel{" + "id=" + id + ", nome=" + nome + ", senha=" + senha + ", email=" + email + '}';
    }
}
