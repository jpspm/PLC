public abstract class Pessoa{
    protected String nome;
    protected String cpf;

    Pessoa(String nome, String cpf){
        this.cpf = cpf;
        this.nome = nome;
    }
    public String getNome(){ //setters e getters
        return nome;
    }
    public String getCPF(){
        return cpf;
    }
    public void setNome(String nome){
        this.nome = nome;
    }
    public void setCPF(String cpf){
        this.cpf = cpf;
    }
}
interface colecao{
    public void inserir(Pessoa person); // Cria as funcoes
    public int tamanhoColecaoNaoNull();
}

class Professor extends Pessoa{ //Funcao herda de Pessoa
    protected String formacao;
    protected String area;
    Professor(String nome, String cpf, String formacao, String area){ //superconstrutor
       super(nome, cpf);
       setArea(area);
       setFormacao(formacao);
    }
    public void setFormacao(String formacao){ //setters e getters
        this.formacao = formacao;
    }
    public void setArea(String area){
        this.area = area;
    }
    public String getArea(){
        return area;
    }
    public String getFormacao(){
        return formacao;
    }
}
class Aluno extends Pessoa{ //Aluno herda de Pessoa
    protected String matricula;
    protected String curso;
    Aluno(String nome, String cpf, String matricula, String curso){ //superconstrutor
        super(nome, cpf);
        setCurso(curso);
        setMatricula(matricula);
    }
    public void setMatricula(String matricula){ //setter e getters
        this.matricula = matricula;
    }
    public void setCurso(String curso){
        this.curso = curso;
    }
    public String getMatricula(){
        return matricula;
    }
    public String getCurso(){
        return curso;
    }
}
class Colecaovetor implements colecao{
    Pessoa[] pessoa = new Pessoa[5]; //inicia o vetor de Pessoas
    int aux = 0; //auxilia na posicao atual do vetor
    @Override
    public void inserir(Pessoa person){ //override pois sobrescreve a funcao
        pessoa[aux] = person;
        aux+=1;
    }
    @Override
    public int tamanhoColecaoNaoNull(){ //override pois sobrescreve a função
        return (pessoa.length -(aux));
    }
    public void getNames(){ //printa a lista de nomes
        for(int i = 0; i< aux; i++){
            System.out.println(pessoa[i].getNome());
        }
    }
}
class Principal{
    public static void main(String args[]){
        Colecaovetor vetor = new Colecaovetor(); //inicia uma nova colecao
        Professor pessoa1 = new Professor("nome", "12345", "Ciencias", "Biologia"); //cria um professor
        Aluno pessoa2 = new Aluno("outro", "1234", "123124", "Filosofia"); //cria um aluno
        Aluno pessoa3 = new Aluno("aleatorio", "123143", "123546", "Historia"); //cria outro aluno
        System.out.println("Restam "+ vetor.tamanhoColecaoNaoNull()+ " Posicoes"); //printa a quantidade de slots disponiveis
        vetor.inserir(pessoa1);                                                     //insere o professor
        System.out.println("Restam "+ vetor.tamanhoColecaoNaoNull()+ " Posicoes");//printa a quantidade de slots disponiveis
        vetor.inserir(pessoa2);                                                     //insere o aluno
        System.out.println("Restam "+ vetor.tamanhoColecaoNaoNull()+ " Posicoes");//printa a quantidade de slots disponiveis
        vetor.inserir(pessoa3);                                                     //insere o outro aluno
        System.out.println("Restam "+ vetor.tamanhoColecaoNaoNull()+ " Posicoes");//printa a quantidade de slots disponiveis
        vetor.getNames();
    }
}