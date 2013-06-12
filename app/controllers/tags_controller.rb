class TagsController < ApplicationController
  before_filter :authenticate_user!
  
  def decanat
    @tag = Tag.find_by_name('decanat');
    @articles = Article.where(:tag_id => @tag.id)    
  end

  def trade_union
    @tag = Tag.find_by_name('trade_union');
    @articles = Article.where(:tag_id => @tag.id)
  end

  def self_government
    @tag = Tag.find_by_name('self_government');
    @articles = Article.where(:tag_id => @tag.id)    
  end
end
