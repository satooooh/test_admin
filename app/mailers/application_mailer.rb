class ApplicationMailer < ActionMailer::Base
  default from:     "メールテスト運営局",
          bcc:      "testmailer310@gmail.com",
          reply_to: "testmailer310@gmail.com"
  layout 'mailer'
end
