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
  :score => 0,
  :sub => "Program",
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
  :score => 0,
  :sub => "Program",
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
  :score => 0,
  :sub => "Program",
  :price => 43.75)
  
  Product.create(:title => 'C++',
  :description =>
    %{<p>
        C++ prime.The book mainly teach you the C++ language, how to use C++, and so on
      </p>},
  :image_url => '/images/c.jpg',
  :score => 0,
  :sub => "Program",
  :price => 45.0)
# . . .


Product.create(:title => 'A Tale of Two Cities',
  :description =>
    %{<p>
       A Tale of Two Cities.Famous novel in the world novel, has been on sale more than two 
       million, and has frequently been adapted into a movie onto the screen.
      </p>},
  :image_url => '/images/story3.jpg',
  :score => 0,
  :sub => "Novel",
  :price => 12.4)
# . . .

Product.create(:title => 'English for Grade3',
  :description =>
    %{<p>
       This is a English book for grade 3 student. This is a English book for grade 3 student
      </p>},
  :image_url => '/images/english1.jpg',
  :score => 0,
  :sub => "English",
  :price => 35.4)
# . . .

Product.create(:title => 'English for Grade2',
  :description =>
    %{<p>
       This is a English book for grade 2 student.This is a English book for grade 2 student
      </p>},
  :image_url => '/images/english2.jpg',
  :score => 0,
  :sub => "English",
  :price => 23)
# . . .

Product.create(:title => 'English for university',
  :description =>
    %{<p>
      This is a English book for university students.This is a English book for university students
      </p>},
  :image_url => '/images/english3.jpg',
  :score => 0,
  :sub => "English",
  :price => 18)
# . . .

Product.create(:title => 'English for teacher',
  :description =>
    %{<p>
        This is a English book for university teachers. This is a English book for university teachers.
      </p>},
  :image_url => '/images/english4.jpg',
  :score => 0,
  :sub => "English",
  :price => 54.2)
# . . .

Product.create(:title => 'HTML5',
  :description =>
    %{<p>
       Introduction to HTML5.this book will tell you how to learn html5
      </p>},
  :image_url => '/images/HTML5.jpg',
  :score => 0,
  :sub => "Program",
  :price => 16)
# . . .

Product.create(:title => 'introduction to China',
  :description =>
    %{<p>
       Introduction to China.We will tell you the truth about china, chinese people,chinese food...
      </p>},
  :image_url => '/images/china.jpg',
  :score => 0,
  :sub => "Chinese",
  :price => 45)
# . . .

Product.create(:title => 'Database',
  :description =>
    %{<p>
       Introduction to database.Data is more an more important in our daily life, the database is the ..
      </p>},
  :image_url => '/images/database.jpg',
  :score => 0,
  :sub => "Database",
  :price => 16)
# . . .

Product.create(:title => 'Network',
  :description =>
    %{<p>
       Introduction to computer network.The protocal TCP ,IP ,The HTTP, POP3, SMTP, FTP etc
      </p>},
  :image_url => '/images/network.jpg',
  :sub => "Compture Network",
  :score => 0,
  :price => 16)
# . . .

Product.create(:title => 'Journey to the West',
  :description =>
    %{<p>
       Here in Kingston, the Chinese traditional culture transplanted to the U.S. cultural 
       context, the Monkey King to assist the monk Buddhist sutras, the fairy tale "Journey to 
       the West" (Journey to the West) metaphor of Chinese immigrants settled in the United States, 
       the historical facts (Journey in the West): Sino-US cultural blend again mixed to form an 
       expression of identity and difference of interpretation space.
      </p>},
  :image_url => '/images/xiyouji.jpg',
  :sub => "Novel",
  :score => 0,
  :price => 67)
# . . .

Product.create(:title => 'Water Margin',
  :description =>
    %{<p>
       Outlaws of the Marsh (Water Margin), iOS, Water Margin, also known as "Outlaws of 
       the Marsh", generally referred to as the "Water Margin", for in the Yuan and Ming is 
       the first one written in the vernacular novels, Chinafour ...
      </p>},
  :image_url => '/images/shuihuzhuan.jpg',
  :sub => "Novel",
  :score => 0,
  :price => 47)
# . . .

Product.create(:title => 'Romance of the Three Kingdoms',
  :description =>
    %{<p>
       "Three Kingdoms" full name "Three Kingdoms" is a historical novel of the Ming Luo 
       Guanzhong. "Three Kingdoms" is a long chapter in the ancient Chinese novels of the 
       mountains, the four famous ancient Chinese, and "Journey to the West", "Outlaws of the 
       Marsh", "Dream of Red Mansions" par."
      </p>},
  :image_url => '/images/sanguoyanyi.jpg',
  :sub => "Novel",
  :score => 0,
  :price => 45)
# . . .

Product.create(:title => 'A Dream of Red Mansions',
  :description =>
    %{<p>
  The Xiangyun guilty of apricot Ban ringworm, Bao Chai life Yinger to her is there to 
  denitrification, Rui officer followed to see Ouguan. Yinger wicker basket, send and Daiyu.
  Yinger sit down in lieu de basketry, Chunyan, said her mother and aunt, the more
      </p>},
  :image_url => '/images/hongloumeng.jpg',
  :sub => "Novel",
  :score => 0,
  :price => 243)
# . . .

Product.create(:title => 'RuiLi',
  :description =>
    %{<p>
  Has of the total issued, the most abundant species series Fashion Journal the book 
  ─ ─ Ruili BOOK; with China's largest fashion media customer database ─ ─ the Ruili 
  readers database, as well as the largest Ruili model resource pool.
      </p>},
  :image_url => '/images/ruili.jpg',
  :sub => "Fashion",
  :score => 0,
  :price => 22)
# . . .

Product.create(:title => 'Science',
  :description =>
    %{<p>
  "Science" is published to the best original research papers, as well as synthesis 
  and analysis of current research and science policy, peer-reviewed journals.
      </p>},
  :image_url => '/images/kexue.jpg',
  :sub => "Science",
  :score => 0,
  :price => 12)
# . . .


User.create(:name => 'dave', :password => 'secret',
  :password_confirmation => 'secret',:user_type => 0)

Category.create(:cat => 'IT')
Category.create(:cat => 'Literature')
Category.create(:cat => 'Language')
Category.create(:cat => 'Magazine')
Category.create(:cat => 'Others')

Subject.create(:sub => 'Program', :pid => 'IT')
Subject.create(:sub => 'Database', :pid => 'IT')
Subject.create(:sub => 'Compture', :pid => 'IT')
Subject.create(:sub => 'Youth', :pid => 'Literature')
Subject.create(:sub => 'Novel', :pid => 'Literature')
Subject.create(:sub => 'English', :pid => 'Language')
Subject.create(:sub => 'Chinese', :pid => 'Language')
Subject.create(:sub => 'Fashion', :pid => 'Magazine')
Subject.create(:sub => 'Computer', :pid => 'Magazine')
Subject.create(:sub => 'Science', :pid => 'Magazine')
Subject.create(:sub => 'others', :pid => 'Others')
