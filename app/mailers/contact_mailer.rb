class ContactMailer < ApplicationMailer
  def received_email(contact)
    @contact = contact
    mail(:subject => 'お問い合わせを承りました')
  end
end
