/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIJARProtocolHandler.idl
 */

module mozilla.dxpcom.nsIJARProtocolHandlerD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIJARProtocolHandler;


public import mozilla.dxpcom.nsIJARProtocolHandlerD;

public import mozilla.xpcom.nsIProtocolHandler;
public import mozilla.dxpcom.nsIProtocolHandlerD;

public import mozilla.xpcom.nsIZipReader;

import mozilla.dxpcom.nsIZipReaderD;


/* starting wrapper class:    nsIJARProtocolHandler */
class nsIJARProtocolHandlerD : public nsIProtocolHandlerD {

  static const nsIID IID = NS_IJARPROTOCOLHANDLER_IID;


  alias nsIJARProtocolHandler InnerType;

  this(nsIJARProtocolHandler intr){
    super(intr);
    this.inner = intr;
  }

  nsIJARProtocolHandler opCast() {
    return inner;
  }

  void opAssign(nsIJARProtocolHandler value) {
    inner = value;
  }

  /**
     * JARCache contains the collection of open jar files.
     */
  /* readonly attribute nsIZipReaderCache JARCache; */
  nsIZipReaderCacheD  JARCache(){
    nsIZipReaderCache value;
    nsresult __result = inner.GetJARCache(&value);
    CheckException(__result);
    return new nsIZipReaderCacheD(value);
  }

private:
  nsIJARProtocolHandler inner;

}

