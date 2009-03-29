# Include hook code here

dir = File.expand_path(File.dirname(__FILE__) + '/lib/')

require File.expand_path(dir + '/pliki/form_builder')
require File.expand_path(dir + '/rails_extensions/2-3-2/route_set')

ActionView::Base.send(:include, Pliki::Helpers::FormHelper)
ActiveRecord::Base.send(:include, Pliki::CanContainWikilinks)
