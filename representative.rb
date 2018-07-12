require 'rubygems'
require 'nokogiri'
require 'open-uri'


def get_representative_name
  array_name = []
  page = Nokogiri::HTML(open("https://www.voxpublic.org/spip.php?page=annuaire&cat=deputes&pagnum=576"))
  name = page.css('h2').select{|link| link['class'] == "titre_normal"}
  name.each do |name|
    rep_name= name.text
    array_name << rep_name
  puts array_name
  end
end

get_representative_name


names =[]

=begin
def get_mail
  mail = []

    page = Nokogiri::HTML(open('https://www.voxpublic.org/spip.php?page=annuaire&cat=deputes&pagnum=576'))
    page.css('a[@href ^="mailto:"]').each do |email|
    mail << email.sub(" ", "")

  end
  p mail
  return mail
end
get_mail
=end
