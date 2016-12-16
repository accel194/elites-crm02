class CommentsController < ApplicationController
  def index
        
  end
    
  def show
  end
    
  def new
  end
    
  def create
    @comment = Comment.new(comment_params)
    @customer = @comment.customer
    @comments = @customer.comments
    if @comment.valid?
      @comment.save
      redirect_to customer_path(@comment.customer_id)
    else
# flashに設定せずに@commentのエラーをviewで出力する処理を作成しているので
# 下記の1行は不要です
      # flash[:alert] = @comment.errors.full._messages
      
      render template: "customers/show"
    end
  end
  def edit
  end

  def update
      
  end

  def destroy
    @comment = Comment.find(params[:id])
    customer_id = @comment.customer_id
    @comment.destroy
    redirect_to customer_path(customer_id)
  end

  private

  def comment_params
    params.require(:comment).permit(:body, :customer_id)
  end
end
