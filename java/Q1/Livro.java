public abstract class Livro{

    protected String titulo;
    protected String isbn;
    protected String autor;
    protected String editora;
    protected int ano;

    Livro(String titulo, String isbn, String autor, String editora, int ano){
        this.titulo = titulo;
        this.isbn = isbn;
        this.autor = autor;
        this.editora = editora;
        this.ano = ano;
    }
    public String getTitulo(){
        return titulo;
    }
    public String getISBN(){
        return isbn;
    }
    public String getAutor(){
        return autor;
    }
    public String getEditora(){
        return editora;
    }
    public int getAno(){
        return ano;
    }
    public void setTitulo(String titulo){
        this.titulo = titulo;
    }
    public void setISBN(String isbn){
        this.isbn = isbn;
    }
    public void setAutor(String autor){
        this.autor = autor;
    }
    public void setEditora(String editora){
        this.editora = editora;
    }
    public void setAno(int ano){
        this.ano = ano;
    }
}

class LivroLivraria extends Livro{
    private Boolean vendido = false;
    LivroLivraria(String titulo, String isbn, String autor, String editora, int ano){
        super(titulo, isbn, autor, editora, ano);
    }
    public void venderLivro(){
        if(vendido == false){
            vendido = true;
        }
        else{
            System.out.println("Livro ja vendido");
        }
    }
}

class LivroBiblioteca extends Livro{
    private Boolean emprestado = false;
    LivroBiblioteca(String titulo, String isbn, String autor, String editora, int ano){
        super(titulo, isbn, autor, editora, ano);
    }
    public void emprestarLivro(){
        if(emprestado == false){
            emprestado = true;
        }
        else{
            System.out.println("Livro ja Emprestado");
        }
    }
}