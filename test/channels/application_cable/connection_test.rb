require "test_helper"

class ApplicationCable::ConnectionTest < ActionCable::Connection::TestCase
  # test "connects with cookies" do
  #   cookies.signed[:user_id] = 42
  #
  #   connect
  #
  #   assert_equal connection.user_id, "42"
  # end
end
<!DOCTYPE HTML>
<html>
 <header>
      <% if user_signed_in? %>
        <div class="lists-left">
        <%= link_to "ログアウト",articles_path,method: :delete, class: "logout" %>
        <%= link_to "投稿する",new_article_path, class: "post"%>
        <%= link_to "チャットルーム",messages_path, class: "lists"%>
        </div>
       <% else %>
         <div class="list-right">
         <%= link_to "ログイン",new_user_session_path,class: "login"%>
         <%= link_to "新規登録",new_user_registration_path, class: "singup"%>
         </div>
       <% end %>
        <div class="image-header">
         <div class="image-top"  style="background:url(images/top.01.png); background-size:cover;">
         </div>
        </div>
   </header>
   <body>
      <div class="body-top-page">
        <div class="image-left"  style="background:url(images/top.003.png); background-size:cover;">
        </div>
        <div class="image-right"  style="background:url(images/top.002.png); background-size:cover;">
        </div>
       </div>
 </body>
</html>
 
