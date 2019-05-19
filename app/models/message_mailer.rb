class MessageMailer
  require 'mailgun'
  def contact(message)
    mg_client = Mailgun::Client.new ENV['mailgun_secret_api_key']
    message_params = {:from => message.email,
                      :to => 'slukyans@gmail.com',
                      :subject => message.subject,
                      :text => message.body}
    mg_client.send_message ENV['mailgun_domain'], message_params
    send
  end
end
