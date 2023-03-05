module mozilla.dxpcom.QueryInterface;

import mozilla.xpcom.nscore;
import mozilla.xpcom.nsISupports;

private
struct VTBL
{
	extern(Windows) nsresult function (nsISupports, nsIID*, void**) QueryInterface;
}

private
struct ISupports
{
	VTBL* vtbl;
}


nsresult QueryInterface(nsISupports obj, nsIID* iid, void** pout)
{
	ISupports* p = cast(ISupports*)cast(void*)obj;
	return p.vtbl.QueryInterface(obj, iid, pout);
}
