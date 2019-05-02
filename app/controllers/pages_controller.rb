class PagesController < ApplicationController

  def index
    @pages = Page.all
  end

  def new
   @page = Page.new
  end

  def create
    # binding.pry
   @page = Page.new(page_params)
   if @page.save
     redirect_to pages_index_path, success: '登録しました'
   else
     flash.now[:danger] = "記入に不備があります"
     render :new
   end
  end

  def update
  @page = Page.find(params[:id])
  @page.update_attributes( :status => 1 )
  redirect_to pages_index_path
end


  # 配列は末尾に
   private
   def page_params
     params.require(:page).permit(:companyname,:people,:goal,:budget,:start,:examination,:lastpassrate,:others,tool: [],property:[],weekday:[],aid:[])
   end
end
