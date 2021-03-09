bind('player_join', null, null, @event) {
	#Obtains player info
	@username = @event['player'];
	@player = puuid(@username, true);
	
	
	#Persistent Storage Variables
	@day = 'day';
	@num = 'num';
	
	if(has_value(@player.@day) && has_value(@player.@num)){
		#This isn't the first time for the attempted player.
		
		#What was originally stored in their data?
		@daythen = get_value(@player.@day);
		@numthen = get_value(@player.@num);
		
		#How long has it been since they last logged on?
		@timePassed = subtract(time(), @daythen)
		if(@timePassed < 86400000) {
			#They logged on earlier today.
		} else if(@timePassed > 172800000) {
			#They didn't log on yesterday
			
			#Resets their stats to day 1.
			store_value(@player.@num, 1);
			store_value(@player.@day, time());
		} else {
			#They logged on yesterday
			#Adds a day to their stats
			@increment = @numthen + 1;
			
			store_value(@player.@num, @increment);
			store_value(@player.@day, time());
			
			#Proccesses their current login streak
			@numnow= get_value(@player.@num);
			switch(@numnow){
			/* ===================================================================
			                    STREAK REWARDS GO HERE
			   =================================================================== */
				case 1:
					@payout = 40;
					@payday = 1;
					tmsg(@player, "[StreakPatch] You have logged on for ".@payday." days and have been rewarded with $".@payout."!");
					runas('~console', '/eco give '.@username.' '.@payout);
				case 2:
					@payout = 50;
					@payday = 2;
					tmsg(@player, "[StreakPatch] You have logged on for ".@payday." days and have been rewarded with $".@payout."!");
					runas('~console', '/eco give '.@username.' '.@payout);
				case 3:
					@payout = 60;
					@payday = 3;
					tmsg(@player, "[StreakPatch] You have logged on for ".@payday." days and have been rewarded with $".@payout."!");
					runas('~console', '/eco give '.@username.' '.@payout);
				case 4:
					@payout = 70;
					@payday = 4;
					tmsg(@player, "[StreakPatch] You have logged on for ".@payday." days and have been rewarded with $".@payout."!");
					runas('~console', '/eco give '.@username.' '.@payout);
				case 5:
					@payout = 80;
					@payday = 5;
					tmsg(@player, "[StreakPatch] You have logged on for ".@payday." days and have been rewarded with $".@payout."!");
					runas('~console', '/eco give '.@username.' '.@payout);
				case 6:
					@payout = 90;
					@payday = 6;
					tmsg(@player, "[StreakPatch] You have logged on for ".@payday." days and have been rewarded with $".@payout."!");
					runas('~console', '/eco give '.@username.' '.@payout);
				case 7:
					@payout = 100;
					@payday = 7;
					tmsg(@player, "[StreakPatch] You have logged on for ".@payday." days and have been rewarded with $".@payout."!");
					runas('~console', '/eco give '.@username.' '.@payout);
					runas('~console', '/give '.@username.' stripped_dark_oak_wood 1 name:&#AD8A56&lBronze_&nLog&#AD8A56&l-in_Trophy lore:&7Given_to_players_who|&7visited_this_world|&7every_day_for_a_week!');
					broadcast('[StreakPatch] Congrats '.@username.' on logging in every day this week!')
				case 8:
					@payout = 120;
					@payday = 8;
					tmsg(@player, "[StreakPatch] You have logged on for ".@payday." days and have been rewarded with $".@payout."!");
					runas('~console', '/eco give '.@username.' '.@payout);
				case 9:
					@payout = 140;
					@payday = 9;
					tmsg(@player, "[StreakPatch] You have logged on for ".@payday." days and have been rewarded with $".@payout."!");
					runas('~console', '/eco give '.@username.' '.@payout);
				case 10:
					@payout = 160;
					@payday = 10;
					tmsg(@player, "[StreakPatch] You have logged on for ".@payday." days and have been rewarded with $".@payout."!");
					runas('~console', '/eco give '.@username.' '.@payout);
				case 11:
					@payout = 180;
					@payday = 11;
					tmsg(@player, "[StreakPatch] You have logged on for ".@payday." days and have been rewarded with $".@payout."!");
					runas('~console', '/eco give '.@username.' '.@payout);
				case 12:
					@payout = 200;
					@payday = 12;
					tmsg(@player, "[StreakPatch] You have logged on for ".@payday." days and have been rewarded with $".@payout."!");
					runas('~console', '/eco give '.@username.' '.@payout);
				case 13:
					@payout = 220;
					@payday = 13;
					tmsg(@player, "[StreakPatch] You have logged on for ".@payday." days and have been rewarded with $".@payout."!");
					runas('~console', '/eco give '.@username.' '.@payout);
				case 14:
					@payout = 250;
					@payday = 14;
					tmsg(@player, "[StreakPatch] You have logged on for ".@payday." days and have been rewarded with $".@payout."!");
					runas('~console', '/eco give '.@username.' '.@payout);
					runas('~console', '/give '.@username.' stripped_birch_wood 1 name:&#D7D7D7&lSilver_&nLog&#D7D7D7&l-in_Trophy lore:&7Given_to_players_who|&7visited_this_world|&7every_day_for_2_weeks!');
					broadcast('[StreakPatch] Congrats '.@username.' on logging in every day for the first two weeks of this event!')
				case 15:
					@payout = 300;
					@payday = 15;
					tmsg(@player, "[StreakPatch] You have logged on for ".@payday." days and have been rewarded with $".@payout."!");
					runas('~console', '/eco give '.@username.' '.@payout);
				case 16:
					@payout = 350;
					@payday = 16;
					tmsg(@player, "[StreakPatch] You have logged on for ".@payday." days and have been rewarded with $".@payout."!");
					runas('~console', '/eco give '.@username.' '.@payout);
				case 17:
					@payout = 400;
					@payday = 17;
					tmsg(@player, "[StreakPatch] You have logged on for ".@payday." days and have been rewarded with $".@payout."!");
					runas('~console', '/eco give '.@username.' '.@payout);
				case 18:
					@payout = 500;
					@payday = 18;
					tmsg(@player, "[StreakPatch] You have logged on for ".@payday." days and have been rewarded with $".@payout."!");
					runas('~console', '/eco give '.@username.' '.@payout);
				case 19:
					@payout = 600;
					@payday = 19;
					tmsg(@player, "[StreakPatch] You have logged on for ".@payday." days and have been rewarded with $".@payout."!");
					runas('~console', '/eco give '.@username.' '.@payout);
				case 20:
					@payout = 700;
					@payday = 20;
					tmsg(@player, "[StreakPatch] You have logged on for ".@payday." days and have been rewarded with $".@payout."!");
					runas('~console', '/eco give '.@username.' '.@payout);
				case 21:
					@payout = 800;
					@payday = 21;
					tmsg(@player, "[StreakPatch] You have logged on for ".@payday." days and have been rewarded with $".@payout."!");
					runas('~console', '/eco give '.@username.' '.@payout);
					runas('~console', '/give '.@username.' stripped_oak_wood 1 name:&#D5D685&lGold_&nLog&#D5D685&l-in_Trophy lore:&7Given_to_players_who|&7visited_this_world|&7every_day_it_was_up!');
					broadcast('[StreakPatch] Congrats '.@username.' on logging in every day for the entire event! <3')
			}
		}
	} else {
		#This is the first time for the attempted player.
		
		#Sets default streak values.
		store_value(@player.@day, time());
		store_value(@player.@num, 1);
	}
}