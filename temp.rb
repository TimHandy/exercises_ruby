require 'net/smtp'

message = <<MESSAGE_END
From: Private Person <tjhandy@gmail.com>
To: A Test User <tjhandy@gmail.com>
Subject: SMTP e-mail test

This is a test e-mail message.
MESSAGE_END

Net::SMTP.start('localhost') do |smtp|
  smtp.send_message message, 'tjhandy@gmail.com', 
                             'tjhandy@gmail.com'
end