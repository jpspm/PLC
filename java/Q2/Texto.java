public class Texto{
    private String texto;
    private String[] words; //separa as palavras e coloca em um vetor

    Texto(String texto){
        this.texto = texto; //construtor
        this.words = texto.split(" ");
    }
    public void printText(){
        System.out.println(texto); // printa o texto
    }
    public int countWords(){
        return words.length; //conta o tamanho do vetor de palavras
    }
    public void switchWords(String search, String newWord){
        String aux = "";
        for(int i = 0; i< words.length; i++){ //percorre o vetor e procura pela palavra desejada
            if(search.equals(words[i])){
                words[i] = newWord; //se for igual, troca a palavr naquela posição
            }
        }
        for(int i = 0; i< words.length; i++){
            if(i== words.length-1){
                aux = aux + words[i]; //reescreve a string, adicionando espaço
            }
            else{
                aux = aux + words[i] + " ";
            }
        }
        texto = aux; //substitui o texto antigo pelo novo
    }
    public int countSubstrings(String substring){
        int count = 0;
        int aux = 0;
        if(texto.indexOf(substring)==-1){ //se nao achar ocorrencias
            return 0;
        }
        else{
            while(texto.indexOf(substring, aux) != texto.lastIndexOf(substring)){ //enquanto eu ainda encontrar ocorrencias, fora a ultima
                aux = (texto.indexOf(substring, aux)+1);
                count+=1;
            }
            return count+1; //ocorrencias encontradas + a ultima
        }
    }
    public static void main(String Args[]){
        Texto texto = new Texto("jujutsu é o melhor anime atualmente");
        System.out.println("A quantidade de palavras no texto é: " + texto.countWords());
        texto.switchWords("jujutsu", "boruto"); //troca as palavras
        texto.printText(); //printa com a palavra substituida
        System.out.println("substrings: " + texto.countSubstrings("me")); //faz a busca
    }
}