require 'toto'

# Rack config
use Rack::Static, :urls => ['/css', '/js', '/images', '/favicon.ico'], :root => 'public'
use Rack::CommonLogger

if ENV['RACK_ENV'] == 'development'
  use Rack::ShowExceptions
end

#
# Create and configure a toto instance
#
toto = Toto::Server.new do
  #
  # Add your settings here
  # set [:setting], [value]
  # 
   set :author,    "Christopher Rodriguez"                               # blog author
   set :title,     "Tumbling Owl" #Dir.pwd.split('/').last                   # site title
   set :url,	   "http://www.tumblingowl.com"
  # set :root,      "index"                                   # page to load on /
  # set :date,      lambda {|now| now.strftime("%d/%m/%Y") }  # date format for articles
   set :markdown,  :smart                                    # use markdown + smart-mode
   set :disqus,    'tumblingowl'                                     # disqus id, or false
   set :summary,   :max => 150, :delim => /~/                # length of article summary and delimiter
   set :ext,       'md'                                     # file extension for articles
  # set :cache,      28800                                    # cache duration, in seconds
  set :to_html   do |path, page, ctx|                         # returns an html, from a path & context
      		    ERB.new(File.read("#{path}/#{page}.rhtml")).result(ctx)
		 end
  set :date, lambda {|now| now.strftime("%B #{now.day.ordinal} %Y") }
end

run toto


