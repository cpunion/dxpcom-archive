Dir["*.idl"].each do |idl|
	if idl.match(/^(\w+)\.idl$/)
		idl = $1
		if idl != "nsrootidl" && idl != "nsISupports" && idl != "nsISelection2" && idl != "domstubs" &&
			idl != "nsIMsgWindowData"
			`/home/lijie/sources/mozilla/dist/bin/xpidl -m dwrap -o ../src/mozilla/dxpcom/#{idl} #{idl}.idl`
		end
	end
end

