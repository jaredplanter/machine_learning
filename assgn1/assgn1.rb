require 'rubygems'
require 'decisiontree'

attributes = ['Title','Description']
assets = [
 ["Yoga", "Fitness Yoga Level I" ],
 ["Swimming", "Swim: Level - Parrotfish (GRWP)",],
 ["Guitar", "Guitar/PreTeen Beginner Thu 6:45 pm (Ages 10-13)" ],
 ["Creative writing", "Writing  Master the skills of writing sketch comedy in this four-level program  designed for writers and actors of all experience levels.  Learn basic  scene structure, character development, establish action, and learn the  styles and genres of comedy.  Weekly writing assignments   &   in-class  exercises generate material and establish a regular writing schedule.   " ],
 ["Swimming", "Preschool Aquatics Fall  Early Bird Price (available ONLINE at pm August 15- midnight August 21): $55M/$61R   " ],
 ["Drawing and drafting", "Art Discovery Studio Sat am (Ages 6-9) S2 Session 2: Students develop their creativity and visual   arts skills in a studio setting as they explore a variety of art media   and techniques. Projects created in class emphasize the use of   fundamental art forms including drawing, painting, printmaking, and   sculpting. Students who wish to experience various media and creative   discovery may enroll in this class on an ongoing basis. Students who   show a strong interest or skill in a particular art form are encouraged   to enroll in the appropriate class to further their development.  " ],
 ["Piano", "PIANO- minute, Yoko Yates Private lessons are at the center of every musician's education, and are essential to developing a lifelong love of music. This course offers private instruction on piano to students ages six and up. Instructors tailor private lessons to address the learning style and goals of each student, from the beginner to the advanced student aspiring to a career in music. Equal emphasis is placed on developing technical proficiency, interpretive skills, individual creativity, and self-confidence. Performance opportunities are available to all students at least once per semester. PRICE: $726  (1 lesson per week/15 weeks) YOKO KIMURA-YATES , pianist, composer, vocalist, and visual artist, was born in Sapporo City, Japan. Raised in a music-loving family, she began studying the keyboard at the age of four and was always surrounded by countless varieties of music, including classical, rock, blues, and jazz. In addition to her ongoing classical piano studies, she was a frequent participant, as both keyboardist and vocalist, in rock, blues and jazz bands throughout high school and college.  As a student at Hokkaido University of Education, she began appearing regularly in the clubs, concerts, and music festivals of the city. After graduating, she also developed her interest toward art education with her teaching experience of music and visual art in the city public school system. These experiences motivated her to study more improvisational music and to find innovative approaches which nurture sensibilities and creativity towards art education in the USA. She was awarded the Cultural Merit Scholarship from Sapporo City and the Professional Music Scholarship from Berklee College of Music to further her studies in Boston.  Graduating from Berklee with a B.A. in music summa cum laude, she went on to receive a Master's degree in education from Lesley University in Cambridge (MA). She then continued her study at Columbia University, Teachers College (NY) for doctoral study in music education, where she was awarded a teaching assistantship and Minority Scholarship.  Yoko has been a member of the piano faculty at both Brooklyn Conservatory of Music and Greenwich House Music School in Manhattan since 1996. She has also taught at the Boys Choir of Harlem (NY), Lincoln Public Schools (MA), and at various private schools. All through her schooling and teaching years, she has maintained a performing career, playing in both traditional concert settings as well as in clubs and special events in Boston and New York.  She has been particularly active as a composer in recent years, drawing musical inspiration from her experience as both an educator and visual artist. She has been invited to write music for books and films, and her compositions have been performed at Nippon Club in New York city, Tokyo International Women's Film Festival, Tokyo, Japan and faculty showcases in Brooklyn Conservatory of Music and Greenwich House Music School. PRE-REGISTRATION (returning students only): May 5-June OPEN REGISTRATION (new students): June 1-Sept.   " ],
 ["Ballet", "Ballet   Tap-Parent   Me #03 March 6:00 pm(2-4yrs)" ],
 ["Dance", "Tiny Tots 2-3 Year Olds" ],
 ["Zumba", "Zumba: yrs+ Mon 6p 10/1-10/29 Zumba is a fusion of Latin and world beats, combined with fun and easy-to-follow steps. Zumba gives workout a new meaning; you can burn up to calories in one hour, thanks to a perfect mixture of fast and slow rhythms, resistance and muscle toning.   " ],
 ["Swimming", "Sw-S5 L1B 11:30-12:00 pm @ PHS Introduction to water activities, good swimming habits, and  safe practices in and around the water.  " ],
 ["Zumba", "Zumba Gold Punchcards: JULY" ],
 ["Tae Kwon Do", "Tae Kwon Do (Age 11+) Tae-Kwon-Do is an outstanding sport that encourages individuality, teaches discipline and control and gets you in great shape. For kids and adults alike Fred has been teaching for over years and encourages a non-contact style.  " ],
 ["Music", "01: Family Music I Tuesday 4:15 pm" ],
 ["Zumba", "Zumba!" ],
 ["Ballet", "Dance Class - Beginning Ballet/Tap This class is for dancers six and older, is more structured introduction to the discipline of ballet and consists of barre and center work, with concentration on further steps as well as stretching and alignment.  Tap combinations are more complex than in classes for younger students.  Students will have a solid technical background for further dance study and will evolve into dancers possessing self confidence and presentation skills which will be shown in their recital dance. If you have questions contact Mary McGehee at 404-695-7563 or  smyrnadancers@gmail.com  " ],
 ["Swimming", "Level 2: Primary Skills" ],
 ["Karate", "Monthly Karate- Intermediate/Advanced" ],
 ["Music", "01: Rock Week,  July" ]
]

# Instantiate the tree, and train it based on the data (set default to '1')
dec_tree = DecisionTree::ID3Tree.new(attributes, assets, 10, :discrete)
dec_tree.train

test = ["Music", "Private Lessons (Fall) - Voice Min - Multi-Pay" ]

decision = dec_tree.predict(test)
puts "Predicted: #{decision} ... True decision: #{test.last}";