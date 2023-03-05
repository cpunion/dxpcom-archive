Dir["*.idl"].each do |idl|
	if idl.match(/^(\w+)\.idl$/)
		idl = $1
		if idl != "nsrootidl" && idl != "nsISupports"
			`/home/lijie/sources/mozilla/dist/bin/xpidl -m d -o ../src/mozilla/xpcom/#{idl} #{idl}.idl`
			`/home/lijie/sources/mozilla/dist/bin/xpidl -m dwrap -o ../src/mozilla/dxpcom/#{idl} #{idl}.idl`
		end
	end
end

