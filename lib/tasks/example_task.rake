namespace :example_task do
    desc 'Rake Task'

    task greet_user: :environment do
        puts "welcome to the rake world"
    end
    
    task hello: :environment do
        puts "hello user welcome to the rake"
    end
end