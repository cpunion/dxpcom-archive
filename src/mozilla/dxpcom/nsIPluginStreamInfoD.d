/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIPluginStreamInfo.idl
 */

module mozilla.dxpcom.nsIPluginStreamInfoD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIPluginStreamInfo;


public import mozilla.dxpcom.nsIPluginStreamInfoD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;
public import mozilla.xpcom.nspluginroot;
public import mozilla.dxpcom.nspluginrootD;


/* starting wrapper class:    nsIPluginStreamInfo */
class nsIPluginStreamInfoD : public nsISupportsD {

  static const nsIID IID = NS_IPLUGINSTREAMINFO_IID;


  alias nsIPluginStreamInfo InnerType;

  this(nsIPluginStreamInfo intr){
    super(intr);
    this.inner = intr;
  }

  nsIPluginStreamInfo opCast() {
    return inner;
  }

  void opAssign(nsIPluginStreamInfo value) {
    inner = value;
  }

  /* readonly attribute nsMIMEType contentType; */
  nsMIMEType ContentType(){
    nsMIMEType value;
    nsresult __result = inner.GetContentType(&value);
    CheckException(__result);
    return value;
  }

  /* void isSeekable (out boolean aSeekable); */
  void IsSeekable(out PRBool aSeekable){
    nsresult __result = inner.IsSeekable(&aSeekable);
    CheckException(__result);
  }

  /* readonly attribute unsigned long length; */
  PRUint32 Length(){
    PRUint32 value;
    nsresult __result = inner.GetLength(&value);
    CheckException(__result);
    return value;
  }

  /* readonly attribute unsigned long lastModified; */
  PRUint32 LastModified(){
    PRUint32 value;
    nsresult __result = inner.GetLastModified(&value);
    CheckException(__result);
    return value;
  }

  /* void getURL (out constCharPtr aURL); */
  void GetURL(out char * aURL){
    nsresult __result = inner.GetURL(&aURL);
    CheckException(__result);
  }

  /* void requestRead (in nsByteRangePtr aRangeList); */
  void RequestRead(nsByteRange * aRangeList){
    nsresult __result = inner.RequestRead(aRangeList);
    CheckException(__result);
  }

  /* attribute long streamOffset; */
  PRInt32 StreamOffset(){
    PRInt32 value;
    nsresult __result = inner.GetStreamOffset(&value);
    CheckException(__result);
    return value;
  }
  void StreamOffset(PRInt32 aStreamOffset){
    nsresult __result = inner.SetStreamOffset(aStreamOffset);
    CheckException(__result);
  }

private:
  nsIPluginStreamInfo inner;

}

