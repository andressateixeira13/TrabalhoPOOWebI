package model;

public class Cofrinho {
    private int idCofrinho;
    private int idConta;
    private String nomeCofrinho;
    private double valorTotalEsperado;
    private double valorAtual;



    public int getIdCofrinho() {
        return idCofrinho;
    }

    public void setIdCofrinho(int idCofrinho) {
        this.idCofrinho = idCofrinho;
    }

    public int getIdConta() {
        return idConta;
    }

    public void setIdConta(int idConta) {
        this.idConta = idConta;
    }

    public String getNomeCofrinho() {
        return nomeCofrinho;
    }

    public void setNomeCofrinho(String nomeCofrinho) {
        this.nomeCofrinho = nomeCofrinho;
    }

    public double getValorTotalEsperado() {
        return valorTotalEsperado;
    }

    public void setValorTotalEsperado(double valorTotalEsperado) {
        this.valorTotalEsperado = valorTotalEsperado;
    }

    public double getValorAtual() {
        return valorAtual;
    }

    public void setValorAtual(double valorAtual) {
        this.valorAtual = valorAtual;
    }
}

