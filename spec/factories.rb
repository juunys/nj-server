FactoryBot.define do

	factory :user_role do
		name {"Admin"}
		query_name {"admin"}
	end
	
	factory :user do
		id {1}
		first_name {"Mary"}
		last_name {"Jane"}
		email {"mary_jane@gmail.com"}
		password {"123"}
		user_role_id {1}
		created_at {'1/04/2020'}
	end
end