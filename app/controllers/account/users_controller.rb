class Account::UsersController < AccountController
	def index
	end
	
	def new
		@user = User.new
	end

	def create
		@user = User.new(params[:user])
		if @user.save
			puts "*********************"
			render :action => :new
		else
			render :action => :new
		end
	end
end
