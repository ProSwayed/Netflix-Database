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
insert into SUBSCRIPTION_TYPE values ( 2, "Limited (4) Plan", 2, 6.99, "Max 4 people allowed online at a time. Anyone else will be kicked off. 150 Hours allowed to be watched a month." );
insert into SUBSCRIPTION_TYPE values ( 3, "Unlimted (2) Plan", 2, 8.99, "Max 2 people allowed online at a time. Anyone else will be kicked off. Unlimited time allowed to be watched a month" );
insert into SUBSCRIPTION_TYPE values ( 4, "Unlimited Plan", 2, 12.99, "Unlimited amount of people allowed on at any given time. Unlimited time allowed oto be watched a month" );

insert into PAYMENT_METHOD values ( 1, 
