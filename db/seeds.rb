# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Norma.create!(:descricao=> "Normalizacao Tecnica ABNT", :idioma=> "Portugues", :codigo=> 6902, :data_atualizacao => "2020-12-01", :versao=>"1.9992", :categoria=> "academica", :repositorio=> "http://www.abnt.org.br/normalizacao/lista-de-publicacoes/abnt/category/304-outubro?download=952:2020-lista-de-publicacao-01-a-31-out", :norma_externa => "ABNT");
Norma.create!(:descricao=> "Norma para protecao do meio ambiente", :idioma=> "Portugues", :codigo=> 6902, :data_atualizacao => "2020-12-01", :versao=>"1.9992", :categoria=> "meio ambiente", :repositorio=> "http://www.anima-opet.com.br/pdf/anima4-Seleta%20Externa/anima4-Ronald-Silka-de-Almeida.pdf", :norma_externa => "ISO");
Norma.create!(:descricao=> "Norma de Protecao da Infancia", :idioma=> "Portugues", :codigo=> 2345, :data_atualizacao => "2020-03-01", :versao=>"4.0", :categoria=> "social", :repositorio=> "http://www.anima-opet.com.br/pdf/anima4-Seleta%20Externa/anima4-Ronald-Silka-de-Almeida.pdf", :norma_externa => "BR6778");
Norma.create!(:descricao=> "Norma DETRAN", :idioma=> "Portugues", :codigo=> 6777, :data_atualizacao => "2020-01-01", :versao=>"8.0", :categoria=> "Transito", :norma_externa => "BR6778");
Norma.create!(:descricao=> "Norma de estatudo do idoso", :idioma=> "Portugues", :codigo=> 4545, :data_atualizacao => "2020-01-01", :versao=>"9.0", :categoria=> "social", :norma_externa => "BR6778");
Norma.create!(:descricao=> "Normalizacao Tecnica SP", :idioma=> "Portugues", :codigo=> 43556, :data_atualizacao => "2019-12-01", :versao=>"1.9992", :categoria=> "academica", :repositorio=> "http://www.abnt.org.br/normalizacao/lista-de-publicacoes/abnt/category/304-outubro?download=952:2020-lista-de-publicacao-01-a-31-out", :norma_externa => "ABNT");
Norma.create!(:descricao=> "Norma para protecao do reflorestamento", :idioma=> "Portugues", :codigo=> 6902, :data_atualizacao => "2020-12-01", :versao=>"1.9992", :categoria=> "meio ambiente", :repositorio=> "http://www.anima-opet.com.br/pdf/anima4-Seleta%20Externa/anima4-Ronald-Silka-de-Almeida.pdf", :norma_externa => "ISO");
Norma.create!(:descricao=> "Norma da vida", :idioma=> "Portugues", :codigo=> 5454, :data_atualizacao => "2020-03-01", :versao=>"4.0", :categoria=> "social", :repositorio=> "http://www.anima-opet.com.br/pdf/anima4-Seleta%20Externa/anima4-Ronald-Silka-de-Almeida.pdf", :norma_externa => "BR6778");
Norma.create!(:descricao=> "Norma musical", :idioma=> "Portugues", :codigo=> 4345, :data_atualizacao => "2018-01-01", :versao=>"8.0", :categoria=> "Transito", :norma_externa => "BR6778");
Norma.create!(:descricao=> "Norma Religiosa", :idioma=> "Portugues", :codigo=> 4545345, :data_atualizacao => "2015-01-01", :versao=>"9.0", :categoria=> "social", :norma_externa => "BR6778");
Norma.create!(:descricao=> "Norma da vicios", :idioma=> "Portugues", :codigo=> 5454, :data_atualizacao => "2020-03-01", :versao=>"4.0", :categoria=> "social", :repositorio=> "http://www.anima-opet.com.br/pdf/anima4-Seleta%20Externa/anima4-Ronald-Silka-de-Almeida.pdf", :norma_externa => "BR6778");
Norma.create!(:descricao=> "Norma Natureza", :idioma=> "Portugues", :codigo=> 4345, :data_atualizacao => "2018-01-01", :versao=>"8.0", :categoria=> "Transito", :norma_externa => "BR6778");
Norma.create!(:descricao=> "Norma Verbal", :idioma=> "Portugues", :codigo=> 4545345, :data_atualizacao => "2015-01-01", :versao=>"9.0", :categoria=> "social", :norma_externa => "BR6778");


User.create!(email: "superuser@sigo.com", password: "password", superuser_role: 1, auditor_role: 1, controller_role: 1);
User.create!(email: "auditor@sigo.com", password: "password", superuser_role: 0, auditor_role: 1, controller_role: 0);
User.create!(email: "controller@sigo.com", password: "password", superuser_role: 0, auditor_role: 0, controller_role: 1);



