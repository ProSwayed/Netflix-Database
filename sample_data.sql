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

insert into PAYMENT_METHOD values ( 1, "8901-7651-8876-2106", 992, '2021-03-31', 1 );
insert into PAYMENT_METHOD values ( 2, "7316-9801-7821-2781", 471, '2024-12-31', 2 );
insert into PAYMENT_METHOD values ( 3, "1021-3452-9922-5562", 032, '2022-05-31', 3 );
insert into PAYMENT_METHOD values ( 4, "0421-4301-0212-8901", 874, '2021-11-31', 4 );
insert into PAYMENT_METHOD values ( 5, "5764-0072-3921-7721", 213, '2020-09-31', 5 );
insert into PAYMENT_METHOD values ( 6, "0821-9908-0476-8321", 213, '2027-04-31', 1 );

insert into INVOICE values ( 1, 9920, null, 1, 2, 6 );
insert into INVOICE values ( 2, 8276, null, 1, 2, 2 );
insert into INVOICE values ( 3, 0341, null, 1, 2, 3 );
insert into INVOICE values ( 4, 0789, null, 1, 2, 4 );
insert into INVOICE values ( 5, 9978, null, 1, 2, 5 );

insert into MOVIE values ( 1, "The lost job", 2017, '001:52:32', "One night, a man lost everything, trying to regain his things that were taken from him." );
insert into MOVIE values ( 2, "The young duckling", 2014, '001:21:42', "The youngest duck goes on the adventure of his life, hoping to find happiness" );
insert into MOVIE values ( 3, "Lucky midnight", 1998, '001:43:07', "A young girl becomes the luckiest person alives, trying to decide what she wants to do while she has all the luck in the world" );
insert into MOVIE values ( 4, "John Smith", 2001, '002:07:31', "Lost in time, john smith tries to get back home" );

