Pony.options = {
  :to => ENV['CONMAILUN'],
  :via => :smtp,
  :via_options => {
    :address              => 'smtp.gmail.com',
    :port                 => '587',
    :enable_starttls_auto => true,
    :user_name            => ENV['CONMAILUN'],
    :password             => ENV['CONMAILPW'],
    :authentication       => :plain, # :plain, :login, :cram_md5, no auth by default
    :domain               => "anumira.com" # the HELO domain provided by the client to the server
  }
}