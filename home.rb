class Produto
  attr_accessor :nome, :quantidade, :preco

  def initialize(nome, quantidade, preco)
    @nome = nome
    @quantidade = quantidade
    @preco = preco
  end

  def to_s
    "Nome: #{@nome}, Quantidade: #{@quantidade}, Preço: #{@preco}"
  end
end

class Estoque
  def initialize
    @produtos = []
  end

  def adicionar_produto(produto)
    @produtos << produto
  end

  def listar_produtos
    if @produtos.empty?
      puts "Estoque vazio."
    else
      @produtos.each { |produto| puts produto }
    end
  end
end

estoque = Estoque.new

loop do
  puts "\nSistema de Gestão de Estoque"
  puts "1. Adicionar Produto"
  puts "2. Listar Produtos"
  puts "3. Sair"
  print "Escolha uma opção: "
  opcao = gets.chomp.to_i

  case opcao
  when 1
    print "Digite o nome do produto: "
    nome = gets.chomp
    print "Digite a quantidade: "
    quantidade = gets.chomp.to_i
    print "Digite o preço: "
    preco = gets.chomp.to_f

    produto = Produto.new(nome, quantidade, preco)
    estoque.adicionar_produto(produto)

    puts "Produto adicionado com sucesso!"
  when 2
    puts "\nProdutos no Estoque:"
    estoque.listar_produtos
  when 3
    puts "Saindo do sistema. Até logo!"
    break
  else
    puts "Opção inválida. Por favor, escolha uma opção válida."
  end
end
