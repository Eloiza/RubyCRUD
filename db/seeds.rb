# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
class Atuacao_entry
	def popula_atuacao(nome_original_filme, lista_atores)
		filme= Filme.find_by(:titulo_original => nome_original_filme)
		lista_atores.each do |nome_ator|
			ator = Ator.find_by(:nome => nome_ator)
			ator.filmes << filme
			ator.save
		end
	end
end


# Ator.delete_all
# Genero.delete_all
# Filme.delete_all
# Produtor.delete_all

# ActiveRecord::Base.connection.execute("BEGIN TRANSACTION; END;")
#CREATE ATORES
b_pitt   = Ator.create(:nome=> "William Bradley Pitt",  :idade=>56, :genero=> "M")
l_caprio = Ator.create(:nome=> "Leonardo DiCaprio",     :idade=>46, :genero=> "M")
a_jolie  = Ator.create(:nome=> "Angelina Jolie Voight", :idade=>45, :genero=> "F")
m_robbie = Ator.create(:nome=> "Margot Robbie", :idade=>30, :genero=> "F")

#elenco vingadores
r_downey  = Ator.create(:nome=> "Robert Downey Jr", :idade=>55, :genero=> "M")
c_evans   = Ator.create(:nome=> "Chris Evans",      :idade=>39, :genero=> "M")
m_ruffalo = Ator.create(:nome=> "Mark Ruffalo",     :idade=>53, :genero=> "M")
c_hemswor = Ator.create(:nome=> "Chris Hemsworth",  :idade=>37, :genero=> "M")
s_johanso = Ator.create(:nome=> "Scarlett Johansson", :idade=>36, :genero=> "F")
t_hiddles = Ator.create(:nome=> "Tom Hiddleston",     :idade=>39, :genero=> "M")

#CREATE PRODUTORES
Produtor.create(:nome => "Kevin Feige")
Produtor.create(:nome => "Quentin Tarantino")
Produtor.create(:nome => "Arnon Milchan")
Produtor.create(:nome => "Joe Roth")

#CREATE GENEROS
Genero.create(:nome=>"Ficcao Científica")
Genero.create(:nome=>"Ação")
Genero.create(:nome=>"Terror")
Genero.create(:nome=>"Aventura")
Genero.create(:nome=>"Fantasia")
Genero.create(:nome=>"Suspense")
Genero.create(:nome=>"Documentário")
Genero.create(:nome=>"Romance")
Genero.create(:nome=>"Comédia")
Genero.create(:nome=>"Comédia Romântica")
Genero.create(:nome=>"Drama")


g_acao     = Genero.find_by(:nome=> "Ação")
g_fantasia = Genero.find_by(:nome=> "Fantasia")
g_comediar = Genero.find_by(:nome=> "Comédia Romântica")
g_comedia  = Genero.find_by(:nome=> "Comédia")

p_herois   = Produtor.find_by(:nome => "Kevin Feige")
p_tarant   = Produtor.find_by(:nome => "Quentin Tarantino")
p_srsra    = Produtor.find_by(:nome => "Arnon Milchan")
p_malevola = Produtor.find_by(:nome => "Joe Roth")

#CREATE MOVIES
Filme.create(:titulo_original=> "The Avengers", :titulo_ptbr=>"Os Vingadores", :ano_lancamento=> 2012, :produtor => p_herois, :genero=> g_acao)
Filme.create(:titulo_original=> "Captain America: Civil War", :titulo_ptbr=>"Capitão América: Guerra Civil", :ano_lancamento=> 2016, :produtor => p_herois, :genero=> g_acao)
Filme.create(:titulo_original=> "Once Upon a Time in Hollywood", :titulo_ptbr=>"Era uma vez em... Hollywood", :ano_lancamento=> 2019, :produtor => p_tarant, :genero=> g_comedia)
Filme.create(:titulo_original=> "Mr. & Mrs. Smith", :titulo_ptbr=>"Sr. e Sra. Smith", :ano_lancamento=> 2005, :produtor => p_srsra, :genero=> g_comediar)
Filme.create(:titulo_original=> "Maleficent", :titulo_ptbr=>"Malévola", :ano_lancamento=> 2014, :produtor => p_malevola, :genero=>g_fantasia)


a = Atuacao_entry.new

lista_atores = ["Robert Downey Jr", "Chris Evans", "Chris Hemsworth", "Mark Ruffalo", "Scarlett Johansson", "Tom Hiddleston"]
a.popula_atuacao("The Avengers", lista_atores)


lista_atores = ["Robert Downey Jr", "Chris Evans", "Scarlett Johansson"]
a.popula_atuacao("Captain America: Civil War", lista_atores)

lista_atores = ["Leonardo DiCaprio", "William Bradley Pitt", "Margot Robbie"]
a.popula_atuacao("Once Upon a Time in Hollywood", lista_atores)


lista_atores = ["William Bradley Pitt", "Angelina Jolie Voight"]
a.popula_atuacao("Mr. & Mrs. Smith", lista_atores)

lista_atores = ["Angelina Jolie Voight"]
a.popula_atuacao("Maleficent", lista_atores)

