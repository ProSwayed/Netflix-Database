insert into USER_ACCOUNT values ( 1, "123hacker@nowhere.com", "Tom", "Durrell", "471-896-4201", "1472 Huntington Rd", "Key West", "Florida", "21379", "9g8hjk6lma", SHA1( "9g8hjk6lmapassword" ) );
insert into USER_ACCOUNT values ( 2, "anywherebuthere@gmail.com", "Ivy", "Burrow", "328-482-5601", "9201 Roberts Rd", "Rock Hill", "South Carolina", "10897", "yj4371la9j", SHA1( "yj4371la9jpassword" ) );
insert into USER_ACCOUNT values ( 3, "jackstalk5@yahoo.com", "Jack", "Stalk", "576-412-8906", "101 New West Rd", "Long Island", "New York", "80905", "op013ljhb7", SHA1( "op013ljhb7password" ) );
insert into USER_ACCOUNT values ( 4, "livashawn@aol.com", "Shawn", "Denero", "900-731-0082", "2202 Huntington Rd", "Key West", "Florida", "21378", "7jh788klm1", SHA1( "7jh788klm1password" ) );
insert into USER_ACCOUNT values ( 5, "nerroalex@nowhere.com", "Alex", "Nerro", "121-683-2021", "806 Vahalla Rd", "States Ville", "California", "43716", "i9ikl3mgh8", SHA1( "i9ikl3mgh8password" ) );

insert into PROFILE values ( 1, "123hacker", 1 );
insert into PROFILE values ( 2, "anywherebuthere", 2 );
insert into PROFILE values ( 3, "jackstalk5", 3 );
insert into PROFILE values ( 4, "livashawn", 4 );
insert into PROFILE values ( 5, "nerroalex", 5 );

insert into PERSON values ( 1, "Howard", "Duck", 'm' );
insert into PERSON values ( 2, "Alexa", "Young", 'f' );
insert into PERSON values ( 3, "Jonisha", "Klerx", 'f' );
insert into PERSON values ( 4, "Jack", "Stalk", 'm' );
insert into PERSON values ( 5, "Chirs", "Erski", 'm' );
insert into PERSON values ( 6, "Sally", "Pop", 'f' );

insert into SUBSCRIPTION_TYPE values ( 1, "Limited (2) Plan", 2, 4.99, "Max 2 people allowed online at a time. Anyone else will be kicked off. 150 Hours allowed to be watched a month." );
insert into SUBSCRIPTION_TYPE values ( 2, "Limited (4) Plan", 4, 6.99, "Max 4 people allowed online at a time. Anyone else will be kicked off. 150 Hours allowed to be watched a month." );
insert into SUBSCRIPTION_TYPE values ( 3, "Unlimted (2) Plan", 2, 8.99, "Max 2 people allowed online at a time. Anyone else will be kicked off. Unlimited time allowed to be watched a month" );
insert into SUBSCRIPTION_TYPE values ( 4, "Unlimited (4) Plan", 4, 12.99, "Max 4 people allowed online at a time. Unlimited time allowed oto be watched a month" );

insert into PAYMENT_METHOD values ( 1, '8901-7651-8876-2106', '992', '2021-03-31', 1 );
insert into PAYMENT_METHOD values ( 2, '7316-9801-7821-2781', '471', '2024-12-31', 2 );
insert into PAYMENT_METHOD values ( 3, '1021-3452-9922-5562', '032', '2022-05-31', 3 );

insert into INVOICE values ( 1, '8276', null, 1, 2, 1, 6.99 );
insert into INVOICE values ( 2, '0341', null, 2, 3, 2, 8.99 );
insert into INVOICE values ( 3, '0789', null, 3, 4, 3, 12.99 );

insert into MOVIE values ( 1, "The lost job", 2017, '001:52:32', "One night, a man lost everything, trying to regain his things that were taken from him." );
insert into MOVIE values ( 2, "The young duckling", 2014, '001:21:42', "The youngest duck goes on the adventure of his life, hoping to find happiness" );
insert into MOVIE values ( 3, "Lucky midnight", 1998, '001:43:07', "A young girl becomes the luckiest person alives, trying to decide what she wants to do while she has all the luck in the world" );
insert into MOVIE values ( 4, "John Smith", 2001, '002:07:31', "Lost in time, john smith tries to get back home" );
insert into MOVIE values ( 5, "The Day the Earth Stood Still", 2001, '002:07:31', "Aliens Invade Earth, Humanity is threated what will happen next? " );

insert into GENRE values ( 1, "Sci-Fi" );
insert into GENRE values ( 2, "Horror" );
insert into GENRE values ( 3, "Adventure" );
insert into GENRE values ( 4, "Thriller" );
insert into GENRE values ( 5, "Romantic" );
insert into GENRE values ( 6, "Comedy" );
insert into GENRE values ( 7, "Action" );

insert into TYPE_OF values ( 1, 3 );
insert into TYPE_OF values ( 2, 6 );
insert into TYPE_OF values ( 3, 1 );
insert into TYPE_OF values ( 4, 7 );
insert into TYPE_OF values ( 5, 1 );

insert into DIRECTED_BY_MOV values ( 1, 5 );
insert into DIRECTED_BY_MOV values ( 2, 2 );
insert into DIRECTED_BY_MOV values ( 3, 2 );
insert into DIRECTED_BY_MOV values ( 4, 5 );
insert into DIRECTED_BY_MOV values ( 5, 5 );

insert into ACTS_IN_MOV values ( 1, 3 );
insert into ACTS_IN_MOV values ( 1, 4 );
insert into ACTS_IN_MOV values ( 2, 1 );
insert into ACTS_IN_MOV values ( 3, 6 );
insert into ACTS_IN_MOV values ( 4, 2 );
insert into ACTS_IN_MOV values ( 4, 4 );
insert into ACTS_IN_MOV values ( 5, 3 );

insert into VIEWS_MOVIE values ( 1, 2, 20.00 );
insert into VIEWS_MOVIE values ( 2, 1, 43.00 );
insert into VIEWS_MOVIE values ( 3, 3, 29.00 );
insert into VIEWS_MOVIE values ( 4, 3, 100.00 );
insert into VIEWS_MOVIE values ( 3, 4, 57.00 );
insert into VIEWS_MOVIE values ( 5, 2, 100.00 );

insert into TV_SHOW values ( 1, "Young King", 2016, "The once and young king now travels the world looking for a new family." );
insert into TV_SHOW values ( 2, "Alphabet", 2016, "Children work to sing the alphabet." );
insert into TV_SHOW values ( 3, "Hide n Seek", 2016, "The lokinstons play hide n seek." );
