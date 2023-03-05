puts "module mozilla.all;"

Dir["*.idl"].each do |idl|
	if idl.match(/^(\w+)\.idl$/)
		idl = $1
		if idl == "domstubs" || idl == "nsISelection2" || 
			idl == "nsINavBookmarksService" || idl == "nsIAnnotationService" ||
			idl == "nsIMsgWindowData"
			next
		end
		puts "import mozilla.dxpcom.#{idl}D;"
		#puts "import mozilla.dxpcom.#{idl}D;"
	end
end

