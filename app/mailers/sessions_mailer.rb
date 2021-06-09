class SessionsMailer < ApplicationMailer
  def forgotten(email, code)
    @code = code
    mail( to: email, subject: "Forgotten email" )
  end
end
