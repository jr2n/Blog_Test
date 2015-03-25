class Post < ActiveRecord::Base
  attr_accessible :title, :content

  validates :title, :content, :presence => true
  validates :title, :length => {:minimum => 2}
  validates :title, :uniqueness => true
end
=begin
<ul>
<% @post.errors.full_messages.each do |message| %>
  <li><%= message %></li>
<% end %>
</ul>

=end
