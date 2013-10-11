namespace :db do 
  desc "Fill database with sample data" 
  task populate: :environment do 
    @cafes = [
      ['Jen\'s Bakery', 'Dessert and coffee bar'],
      ['Blueberry', 'Juice bar with wifi'],
      ['Hothouse Cafe', 'Sandwiches, light meals'],
      ['Pagoda Cafe', 'breakfasts, lunches, snacks'],
      ['Sweet Mandy B\'s, Dessert and coffee bar'],
      ['The Brown Dog', 'Gastro pub'],
      ['Ealing Broadway Tavern', 'Gastro pub'],
      ['Charlotte\'s', 'Gastro Pub'],
      ['Kew Gardens Inn', 'Gastro Pub'],
      ['Cafe Torelli\'s', 'Coffee bar']
    ]
    10.times do |n|
      puts "[DEBUG] creating cafe #{n+1} of 10"
      Cafe.create(name: @cafes[n][0], description: @cafes[n][1])
    end
  end
end   