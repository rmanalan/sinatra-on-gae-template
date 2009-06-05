Sinatra Template for Google App Engine
=====================================

Want to write a Google App Engine app using Sinatra and JRuby?  There are a few good places to go for how to do it:

 * [Running Sinatra apps on Google App Engine (Java)](http://blog.bigcurl.de/2009/04/running-sinatra-apps-on-google.html)
 * [Writing Sinatra apps for Google App Engine, the productive way](http://dev.massivebraingames.com/past/2009/4/15/writing_sinatra_apps_for_google/)
 * [App Engine Java Overview](http://code.google.com/appengine/docs/java/overview.html)

... and I'm sure there will be more.  I've read the links above and have basically created a base app you can use to start your own.  I'm not planning on maintaining this beyond what's here.  If you like it use it and fork it, otherwise, move on.

Basic Use
---------

For this to work, you'll need the the [Google App Engine SDK for Java](http://code.google.com/appengine/downloads.html#Google_App_Engine_SDK_for_Java) and also [JRuby 1.3.0+](http://jruby.org).  Once you have JRuby installed, you'll also need to install the warbler gem:

	jruby -S gem install warbler

After you've downloaded those, clone this repository on your local:

	git clone git@github.com:manalang/sinatra-on-gae-template.git
	
Create your Sinatra app in app/WEB-INF/app.rb.  When you're ready, package it up using warbler:

	jruby -S warble
	
This will update the tmp/war directory in your app.  After that's done, you can test it by running:

	appengine-java-sdk-XXX/bin/dev_appserver.sh app
	
This will run the local GAE server.  This is probably not the most convenient way to test.  You might want to test under MRI instead.  When you're ready to deploy, you'll first need to update your app/WEB-XML/appengine-web.xml by replacing YOUR-APPLICATION-ID and also change the :environment in config.ru, then deploy by running:

	appengine-java-sdk-XXX/bin/appcfg.sh update app
	
Make sure you've [signed up](http://appengine.google.com/) for a Google App Engine account before you do this.