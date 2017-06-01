module UserNotifierHelper
	def subscriber_follow_message(user)
		if user.all_following.count <= 0 
			"Likewise, it is very important that you click to follow specific cases and allow us to keep you up to date. The more people paying attention, the easier it will be affect change.</p>"
		else 
			"Likewise, you have already taken the first step by following #{pluralize(user.all_following.count, 'case')} on EBWiki. Thanks for allowing us to keep you up to date!"
		end 
	end
	
	def standard_follow_message(user)
		if user.all_following.count <= 0
			"It is very important that you click to follow one or more cases and allow us to keep you up to date. The more people paying attention, the easier it will be effect change."
		else
			"You have already taken the first step by following #{ pluralize(user.all_following.count, 'case') } on EBWiki and allowing us to keep you up to date. #{ link_to('Subscribe to our newsletter as well', ENV['MAILCHIMP_LINK']) } for periodic general updates and commentaries on this issue."
		end
	end
end