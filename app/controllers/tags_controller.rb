class TagsController < ApplicationController
  def decanat
    @tag = Tag.find_by_name('decanat');    
  end

  def trade_union
    @tag = Tag.find_by_name('prof');    
  end

  def self_government
    @tag = Tag.find_by_name('su');    
  end
end
