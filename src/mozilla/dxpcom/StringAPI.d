module mozilla.dxpcom.StringAPI;


import mozilla.xpcom.nsrootidl;
import mozilla.xpcom.nsStringAPI;



class AString
{
	this(wchar[] s)
	{
		nsresult result;
		result = NS_StringContainerInit2(&str, s.ptr, s.length, 0);
		if (result != 0) // TODO: convert to XPCOM fail macro
			throw new Exception("Init string container fail");
	}

	this()
	{
		nsresult result;
		result = NS_StringContainerInit(&str);
		if (result != 0) // TODO: convert to XPCOM fail macro
			throw new Exception("Init string container fail");
	}

	nsAString* opCast()
	{
		return cast(nsAString*)&str;
	}

	wchar[] GetString()
	{
		wchar* buffer = null;
		PRBool terminated;
		uint len = NS_StringGetData(cast(nsAString*)&str, &buffer, &terminated);
		wchar[] result = buffer[0 .. len].dup;
		return result;
	}

	~this()
	{
		NS_StringContainerFinish(&str);
	}
private:
	nsStringContainer str;
}



class ACString
{
	this(char[] s)
	{
		nsresult result;
		result = NS_CStringContainerInit2(&str, s.ptr, s.length, 0);
		if (result != 0) // TODO: convert to XPCOM fail macro
			throw new Exception("Init string container fail");
	}

	this()
	{
		nsresult result;
		result = NS_CStringContainerInit(&str);
		if (result != 0) // TODO: convert to XPCOM fail macro
			throw new Exception("Init string container fail");
	}

	nsACString* opCast()
	{
		return cast(nsACString*)&str;
	}

	char[] GetString()
	{
		char* buffer = null;
		PRBool terminated;
		uint len = NS_CStringGetData(cast(nsACString*)&str, &buffer, &terminated);
		char[] result = buffer[0 .. len].dup;
		return result;
	}

	~this()
	{
		NS_CStringContainerFinish(&str);
	}
private:
	nsCStringContainer str;
}

