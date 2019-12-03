class CustomMailer < ApplicationMailer
    default from: 'Sushi-guide <no-reply@sushi-guide.work>'
    # Subject can be set in your I18n file at config/locales/en.yml
    # with the following lookup:
    #
    #   en.custom_mailer.tet.subject
    #
    def test
      @greeting = 'Hi'
  
      mail to: 'yoroshikudouzobbb@gmail.com'
    end
end