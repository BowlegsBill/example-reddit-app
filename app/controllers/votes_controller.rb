class VotesController < ApplicationController
  before_action :set_post
  before_action :set_vote, only: :update
  def create
    @post.votes.create(vote_params.merge(user: current_user))
    redirect_to posts_path, notice: 'Successfully voted'
  end

  def update
    @vote.update(vote_params)
    redirect_to posts_path, notice: 'Successfully changed your vote'
  end

  private

  def set_post
    @post = Post.find(params[:post_id])
  end

  def set_vote
    @vote = Vote.find(params[:id])
  end

  def vote_params
    params.require(:vote).permit(:direction)
  end
end