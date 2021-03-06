FactoryBot.define do

	factory :user_role do
		name {"Admin"}
		query_name {"admin"}
	end
	
	factory :user do |f|
		f.id {1}
		f.first_name {"Mary"}
		f.last_name {"Jane"}
		f.email {"mary_jane@gmail.com"}
		f.password {"123"}
		f.user_role_id {1}
		f.status_user_id {1}
		f.created_at {'1/04/2020'}
	end

	factory :invalid_user, parent: :user do |f|
		f.first_name nil
	end

	factory :product do
		id {1}
		condition_id {1}
		store_id {1}
		gender_id {1}
		size_id {1}
		status_product_id {1}
		product_quantity_id {1}
		name {'Macacão'}
		description {'Macacão super fofo'}
		price {87.99}
		brand {'Nana Jun'}
		created_at {'1/04/2020'}
	end

	factory :product_quantity do
		id {1}
		quantity {1}
		created_at {'1/04/2020'}
	end

	factory :order do
		id {1}
		quantity {1}
		user_id {1}
		product_id {1}
		created_at {'1/04/2020'}
	end

	factory :phone do
		id {1}
		ddd {'11'}
		number {'944844550'}
		user_id {1}
		created_at {'1/04/2020'}
	end

	factory :address do
		id {1}
		address {'Rua do nana jun'}
		address_number {'120'}
		complement {'apt 14'}
		neighborhood {'Vila Nana Jun'}
		cep {'04055-123'}
		state {'São Paulo'}
		city {'São Paulo'}
		created_at {'1/04/2020'}
	end

	factory :photo do
		id {1}
		image {'https://google.com'}
		created_at {'1/04/2020'}
	end

	factory :store do
		id {1}
		user_id {1}
		title {'Nana Jun'}
	end

	factory :code do
		sequencial_code {1}
	end

	factory :gender do
		name {"Príncipe"}
		query_name {"prince"}
	end

	factory :condition do
		name {"Novo"}
		query_name {"brand_new"}
	end

	factory :status_product do
		name {"Vendido"}
		query_name {"sold"}
	end

	factory :status_user do
		name {"Ativo"}
		query_name {"active"}
	end

	factory :size do
		name {"1-3 meses"}
		query_name {"1_3_m"}
	end
end