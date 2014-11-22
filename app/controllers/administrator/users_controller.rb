
class Administrator::UsersController < Administrator::AdministratorController

  before_filter :private_load, only: [:show, :edit, :update, :destroy]
  before_filter :private_new, only: [:new, :create]

  def index

    if params[:keyword]
      sql_where = " account_no like '%#{params[:keyword]}%' "
      sql_where += " or name like '%#{params[:keyword]}%' "
      sql_where += " or area like '%#{params[:keyword]}%' "
      sql_where += " or memo like '%#{params[:keyword]}%' "
      sql_where += " or give_me like '%#{params[:keyword]}%' "
      sql_where += " or give_you like '%#{params[:keyword]}%' "
    end

    @users = User
      .where(sql_where)
      .order('account_no')
      .page(params[:page])
      .per(params[:lines])

  end

  def show
  end

  def new
  end

  def create
    # Debug.print params.inspect
    @user.attributes = params[:user]
    if @user.save
      redirect_to [:administrator, @user]
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @user.update_attributes(params[:user])
      redirect_to [:administrator, @user]
    else
      render :edit
    end
  end

  def destroy
    @user.destroy
    redirect_to administrator_users_path
  end

  private

  def private_load
    @user = User.find(params[:id])
  end

  def private_new
    @user = User.new
  end

end
