class PostMailer < ApplicationMailer
  def post_email(user, product)
    @user = user
    @name = product.name
    mail to:      user.email,
         subject: '注文が完了しました。'
  end
end