class PagesController < ApplicationController
  def index
    @pages = Page.all
  end

  def new
   @page = Page.new
  end

  def create
   @page = Page.new(page_params)
   if @page.save
     redirect_to pages_index_path, success: '成功しました'
   else
     flash.now[:danger] = "失敗しました"
     render :new
   end
  end

  def update
  @page = Page.find(params[:id])
  @page.update_attributes( :status => 1 )
  redirect_to pages_index_path
end


   private
   def page_params
     params.require(:page).permit(:companyname,:tool,:property,:people,:goal,:budget,:start,:weekday,:examination,:aid,:lastpassrate,:others)
   end

end
