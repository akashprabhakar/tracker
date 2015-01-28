module ApplicationHelper
		def nav_items
	  	[
	  		{
			 displaytext: 'Home',
			 controllername: 'home',
			 linkurl: root_path
			},
			{
			 displaytext: 'Companies',
			 controllername: 'companies',
			 linkurl: companies_path
			},
			{
			 displaytext: 'Projects',
			 controllername: 'projects',
			 linkurl: projects_path
			},
			{
			 displaytext: 'Reports',
			 controllername: 'Reports',
			 linkurl: reports_path
			}
		]
	end

	def display_nav_item(displaytext, controllername, linkurl)
		raw("<li#{controller_name == controllername ? ' class="active"' : ''}>#{link_to displaytext, linkurl}</li>")
	end

		def user_logged_in_msg
		str = ''
		str += '<div class="userloggedin">'
		if user_signed_in?
			str += "<p  id=""user_info"">#{current_user} |  #{link_to('Logout', destroy_user_session_path, :method => :delete)}</p>"
		else
			str += "<p id=""user_info"">#{link_to('Login', new_user_session_path)} | #{link_to('Register', new_user_registration_path)}</p>"
		end
		str += '</div>'
		raw(str)
	end

end
