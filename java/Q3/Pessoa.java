public class Pessoa{

    protected String nome;
    protected int idade;
    protected String grauDeEscolaridade;
    protected idDeGen identidadeDeGenero;
    protected String orientacaoSexual;
    protected String sexoBiologio;

    Pessoa(){}
    Pessoa(String nome, int idade, String grau, idDeGen idGenero, String orientacaoSex, String sexBiologico){
        this.nome = nome;
        this.idade = idade;
        this.grauDeEscolaridade = grau;
        this.identidadeDeGenero = idGenero;
        this.orientacaoSexual = orientacaoSex;
        this.sexoBiologio = sexBiologico;
    }
    public enum idDeGen{
        CISGENERO("cisgenero"), TRANSGENERO("transgenero"), GENEROFLUIDO("genero fluido"), NAOBINARIO("nao binario");

        private String genero;

        idDeGen(String genero){
            this.genero = genero;
        }
        public String getId(){
            return genero;
        }

    }
    public String getNome(){
        return nome;
    }
    public int getIdade(){
        return idade;
    }
    public String getEscolaridade(){
        return grauDeEscolaridade;
    }
    public idDeGen getIdGenero(){
        return identidadeDeGenero;
    }
    public String getOrientacaoSex(){
        return orientacaoSexual;
    }
    public String getSexBiologico(){
        return sexoBiologio;
    }
    public void setIdade(int idade){
        this.idade = idade;
    }
    public void setNome(String nome){
        this.nome = nome;
    }
    public void setGrauEsc(String escolaridade){
        this.grauDeEscolaridade = escolaridade;
    }
    public void dormir(){
        System.out.println("dormindo");
    }
    public void cagar(){
        System.out.println("cagando");
    }
    public void comer(){
        System.out.println("comendo");
    }
    public void estudar(){
        System.out.println("estudando");
    }
    public void viver(){
        System.out.println("vivendo");
    }
    public void sobreviver(){
        System.out.println("sobrevivendo");
    }
    public void traalhar(){
        System.out.println("trabalhando");
    }

    public static void main(String args[]){
        Pessoa fulano = new Pessoa();
        Pessoa eu = new Pessoa("joao", 21, "Superior", idDeGen.CISGENERO, "hetero", "Masculino");
        System.out.println(fulano.getNome());
        fulano.cagar();
        System.out.println(eu.getIdGenero().getId());
        eu.estudar();
    }
}