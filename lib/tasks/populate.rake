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

  task populate_reviews: :environment do 
    @reviews = [
      ['Awesome chocolate chip cookies', 5, 1],
      ['some very good review etc', 4, 2],
      ['another excellent review', 5, 1],
      ['excellent place, really good service', 5, 1],
      ['great food shame about the service', 3, 9],
      ['excellent food and great atmosphere, perfect for dog lovers', 4, 6],
      ['Authentic italian espresso', 4, 10],
      ['great place to chill out, prices are steep', 3, 2],
      ['ipsem lorem blah blah', 3, 4],
      ['lots of different home baked goods - all very good', 4, 1]
    ]
    10.times do |n|
      puts "[DEBUG] creating cafe #{n+1} of 10"
      Review.create(post: @reviews[n][0], rating: @reviews[n][1], cafe_id: @reviews[n][2])
    end
  end   

end