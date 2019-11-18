class CustomMailer < ApplicationMailer
    default from: 'HandmadeGarden <yoroshikudouzobbb@gmail.com>'
    # Subject can be set in your I18n file at config/locales/en.yml
    # with the following lookup:
    #
    #   en.custom_mailer.tet.subject
    #
    def test
      @greeting = 'Hi'
  
      mail to: 'kannrakugeiqaz@yahoo.co.jp'
    end
end