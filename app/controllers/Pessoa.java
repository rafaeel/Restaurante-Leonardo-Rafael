public class Pessoa {
   private String nome;
   public Pessoa(String meuNome) {
      this.nome = meuNome;
   }
   public void setNome(String novoNome) {
      this.nome = novoNome;
   }
   public String getNome(){
      return this.nome;
   }
   public void seMostra(){       
      System.out.println(this.getNome());
   }
}
