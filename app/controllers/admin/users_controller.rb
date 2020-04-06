class Admin::UsersController < Admin::ApplicationController
	before_action :authorize_session
    before_action :set_user, only: [:show, :edit, :update]
    # before_action :set_s3_direct_post

    def index
        users = UserDatatable.new(params, view_context: view_context)
        @users = users.get_raw_records
        respond_to do |format|
            format.html
            format.json { render json:  users}
        end
    end

    def show
    end

    def new
        @user = User.new
        @user.build_address
    end

    def create
        @user = User.new(user_params)
        respond_to do |format|
            if @user.save
            	if @user.build_address(address_params).save
                	format.html { redirect_to "/users", notice: 'Usuário criado com sucesso!' }
                end
            else
                format.html { render :new }
                format.json { render json: @user.errors.full_messages, status: :unprocessable_entity }
            end
        end
    end

    def edit
    end

    def update
        respond_to do |format|
            if @user.update(user_params)
            	if @user.address.update(address_params)
                	format.html { redirect_to "/users", notice: 'Usuário atualizado com sucesso!' }
            	end
            else
                format.html { render :edit }
            end
        end
    end

    def destroy_multiple
        params[:user_ids].each do |id|
            User.find_by(id: id).destroy
        end
    end

    def sendEmailActivationUser
        if @user
            begin
            UserMailer.activation(@user).deliver_now
            flash[:notice] = 'Email reenviado'
            @user.status = "active"
            rescue Net::SMTPAuthenticationError, Net::SMTPServerBusy, Net::SMTPSyntaxError, Net::SMTPFatalError, Net::SMTPUnknownError => e
            flash[:notice] = nil
            flash[:error] = "Erro ao enviar o Email!"
            @user.status = "inactive"
            end
            redirect_to @user
        end
    end

    private

    def set_user
        @user = User.find(params[:id])
    end

    def user_params
        params.require(:user).permit(:user_ids, :id, :avatar, :name, :date_of_birth, :email, :status_user_id, :user_role_id, :password, :password_confirmation)
    end

    def address_params
    	params.required(:address).permit(:id, :address, :address_number, :complement, :neighborhood, :cep, :city, :state)
    end

    # def set_s3_direct_post
    #     @s3_direct_post = S3_BUCKET.presigned_post(key: "uploads/#{SecureRandom.uuid}/${filename}", success_action_status: '201', acl: 'public-read', content_type:'Content-Type')
    # end
end

end
