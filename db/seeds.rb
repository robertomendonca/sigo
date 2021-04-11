# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Norma.create!(:descricao=> "Norma de Protecao Ambiental", :idioma=> "Portugues", :codigo=> 6902, :data_atualizacao => "2020-12-01", :versao=>"1.9992", :categoria=> "meio ambiente");
Norma.create!(:descricao=> "Norma de Protecao da Crianca", :idioma=> "Portugues", :codigo=> 43433, :data_atualizacao => "2020-09-01", :versao=>"5.6", :categoria=> "social");
User.create!(email: "superuser@sigo.com", password: "password", superuser_role: 1, auditor_role: 1, controller_role: 1);
User.create!(email: "auditor@sigo.com", password: "password", superuser_role: 0, auditor_role: 1, controller_role: 0);
User.create!(email: "controller@sigo.com", password: "password", superuser_role: 0, auditor_role: 0, controller_role: 1);



