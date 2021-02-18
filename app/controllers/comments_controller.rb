class CommentsController < ApplicationController
  def create
    #First grab the article
    @article = Article.find(params[:article_id])

    #Then create a comment, linking it to the article id using 
    #active record. If you try @article.comments this will return a select
    # comments where article_id is equal to @article.id
    @comment = @article.comments.create(comment_params)

    #the redirect to the @article page
    redirect_to article_path(@article)
  end

  private

  def comment_params
    params.require(:comment).permit(:commenter, :body)
  end
end
