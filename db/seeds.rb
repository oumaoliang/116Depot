# encoding: utf-8
Product.delete_all
Product.create(:title => 'Web Design for Developers',
  :description => 
    %{<p>
        <em>Web Design for Developers</em> will show you how to make your
        web-based application look professionally designed. We'll help you
        learn how to pick the right colors and fonts, avoid costly interface
        and accessibility mistakes -- your application will really come alive.
        We'll also walk you through some common Photoshop and CSS techniques
        and work through a web site redesign, taking a new design from concept
        all the way to implementation.
      </p>},
  :image_url =>   '/images/wd4d.jpg',    
  :price => 42.95)
# . . .
Product.create(:title => 'Programming Ruby 1.9',
  :description =>
    %{<p>
        Ruby is the fastest growing and most exciting dynamic language
        out there. If you need to get working programs delivered fast,
        you should add Ruby to your toolbox.
      </p>},
  :image_url => '/images/ruby.jpg',
  :price => 49.50)
# . . .

Product.create(:title => 'Rails Test Prescriptions',
  :description => 
    %{<p>
        <em>Rails Test Prescriptions</em> is a comprehensive guide to testing
        Rails applications, covering Test-Driven Development from both a
        theoretical perspective (why to test) and from a practical perspective
        (how to test effectively). It covers the core Rails testing tools and
        procedures for Rails 2 and Rails 3, and introduces popular add-ons,
        including Cucumber, Shoulda, Machinist, Mocha, and Rcov.
      </p>},
  :image_url => '/images/rtp.jpg',
  :price => 43.75)
  
  Product.create(:title => 'C++',
  :description =>
    %{<p>
        C++ prime
      </p>},
  :image_url => '/images/c.jpg',
  :price => 45.0)
# . . .

Product.create(:title => 'story',
  :description =>
    %{<p>
        story
      </p>},
  :image_url => '/images/story1.jpg',
  :price => 23.2)
# . . .

Product.create(:title => 'story2',
  :description =>
    %{<p>
       story2
      </p>},
  :image_url => '/images/story2.jpg',
  :price => 45.2)
# . . .

Product.create(:title => 'story3',
  :description =>
    %{<p>
       story3
      </p>},
  :image_url => '/images/story3.jpg',
  :price => 12.4)
# . . .

<<<<<<< HEAD
Product.create(:title => 'English for Grade3',
  :description =>
    %{<p>
       This is a English book for grade 3 student
      </p>},
  :image_url => '/images/english1.jpg',
  :price => 35.4)
# . . .

Product.create(:title => 'English for Grade2',
  :description =>
    %{<p>
       This is a English book for grade 2 student
      </p>},
  :image_url => '/images/english2.jpg',
  :price => 23)
# . . .

Product.create(:title => 'English for university',
  :description =>
    %{<p>
      This is a English book for university students
      </p>},
  :image_url => '/images/english3.jpg',
  :price => 18)
# . . .

Product.create(:title => 'English for teacher',
  :description =>
    %{<p>
        This is a English book for university teachers
      </p>},
  :image_url => '/images/english4.jpg',
  :price => 54.2)
# . . .

Product.create(:title => 'HTML5',
  :description =>
    %{<p>
       Introduction to HTML5
      </p>},
  :image_url => '/images/HTML5.jpg',
  :price => 16)
# . . .

Product.create(:title => 'introduction to China',
  :description =>
    %{<p>
       Introduction to China
      </p>},
  :image_url => '/images/china.jpg',
  :price => 45)
# . . .

Product.create(:title => 'Database',
  :description =>
    %{<p>
       Introduction to database
      </p>},
  :image_url => '/images/database.jpg',
  :price => 16)
# . . .

Product.create(:title => 'Network',
  :description =>
    %{<p>
       Introduction to computer network
      </p>},
  :image_url => '/images/network.jpg',
  :price => 16)
# . . .
=======
User.create(:name => 'dave', :password => 'secret',
  :password_confirmation => 'secret')
>>>>>>> 745ff94677d105948dc342a17dd1316ead821467
