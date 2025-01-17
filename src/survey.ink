VAR name = "nobody"
VAR is_interested = false
VAR pro_open = false
VAR every = 0

Hey friends. So you've expressed interest in a writing group specialising in interactive stories using ink.

Please enter your name: 
#INPUT
+ [continue] 

-

Hi {name}! Are you still interested?

+ Yes
    ~is_interested=true
    -> interested
+ No
    ~is_interested=false
    -> not_interested

==not_interested==

Awww okay. Well let me know if you change your mind.
#SEND

->END

==interested==

Great. Well I'm thinking each session will be 2 hours long, and we'll have a session every two weeks. Thoughts?

+ Sounds good to me
Great
~every=2
+ I'd prefer weekly 
Blimey, so enthusiastic!
~every=1
+ Could we make it once a month
Noted
~every=4
+ Could we make it once every 3 weeks 
Noted
~every=3
-

I'll try to introduce a new feature of ink each session. 

I also think if we can make it the day of the week that would make it easier, with less cognative load and organising needed. Obviously that's up to you.
+ [continue] 
-



I'd like it if we publish everything we write onto a single site. I'd be willing to do the hosting. Would you be okay with this idea? Each author would choose if their story would be credited or published anonymously.

+ I'd prefer if I what I wrote didn't get published.
~pro_open=false
+ I'd like this.
~pro_open=true
-

Thanks for taking the time to answer these questions.
#SEND



->END
