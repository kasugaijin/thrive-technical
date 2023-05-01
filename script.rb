require 'json'

users_data = File.read('users.json')
companies_data = File.read('companies.json')
users = JSON.parse(users_data)
companies = JSON.parse(companies_data)

companies.each do |company|
  token_top_up = 0
  updated_users = []

  active_company_users = users.select { |user| user['company_id'] == company['id'] && user['active_status'] }
  active_company_users.sort_by! { |user| user['last_name'] }

  active_company_users.each do |user|

    updated_user = {
      last_name: user['last_name'], 
      first_name: user['first_name'],
      email: user['email'],
      previous_token_balance: user['tokens'],
      new_token_balance: user['tokens'] + company['top_up'],
      email_sent: true
    }

    if user['email_status']
      updated_users << updated_user
    else
      updated_users << updated_user
      updated_users.last[:email_sent] = false
    end

    token_top_up += company['top_up']
  end

  puts "Company Id: #{company['id']}"
  puts "Company Name: #{company['name']}"
  puts "Users Emailed:"
  
  updated_users.each do |user|
    if user[:email_sent]
      puts "\t#{user[:last_name]}, #{user[:first_name]}, #{user[:email]}"
      puts "\t Previous Token Balance, #{user[:previous_token_balance]}"
      puts "\t New Token Balance #{user[:new_token_balance]}"
    end
  end

  puts "Users Not Emailed:"

  updated_users.each do |user|
    if !user[:email_sent]
      puts "\t#{user[:last_name]}, #{user[:first_name]}, #{user[:email]}, #{user[:previous_token_balance]}, #{user[:new_token_balance]}"
    end
  end
  
  puts "Total amount of top ups for #{company['name']}: #{token_top_up}"
  puts "\n"
end