public class Conta{
    protected int numerodeidentificacao;
    protected int agencia;
    protected Senha senha;

    Conta(int id, int agencia, String alfanum, int senhaNum){
        this.numerodeidentificacao = id;
        this.agencia = agencia;
        this.senha = new Senha(alfanum, senhaNum);
    }
    protected int getId(){
        return numerodeidentificacao;
    }
    protected int getAgencia(){
        return agencia;
    }
    protected Senha getSenha(){
        return senha;
    }
    protected void setId(int id){
        this.numerodeidentificacao = id;
    }
    protected void setAgencia(int agencia){
        this.agencia = agencia;
    }
    protected void setSenha(Senha senha){
        this.senha = senha;
    }
    public static void main(String args[]){
        Conta conta = new Conta(20210416, 1207, "J040P3DR0", 211002);
        System.out.println(conta.getSenha().getAlfaNum());
        conta.getSenha().setAlfaNum("P3DR0J040");
        System.out.println(conta.getSenha().getAlfaNum());

    }
}
class Senha{
    protected String alfanumerica;
    protected int numerica;

    Senha(String alfanumerica, int numerica){
        this.alfanumerica = alfanumerica;
        this.numerica = numerica;
    }
    protected String getAlfaNum(){
        return alfanumerica;
    }
    protected int getNumerica(){
        return numerica;
    }
    protected void setAlfaNum(String alfanum){
        this.alfanumerica = alfanum;
    }
    protected void setNumerica(int numerica){
        this.numerica = numerica;
    }
}