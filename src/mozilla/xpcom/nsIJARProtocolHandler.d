/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIJARProtocolHandler.idl
 */

module mozilla.xpcom.nsIJARProtocolHandler;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsIProtocolHandler;

public import mozilla.xpcom.nsIZipReader;


/* starting interface:    nsIJARProtocolHandler */
const char[] NS_IJARPROTOCOLHANDLER_IID_STR = "92c3b42c-98c4-11d3-8cd9-0060b0fc14a3";

const nsIID NS_IJARPROTOCOLHANDLER_IID= 
  {0x92c3b42c, 0x98c4, 0x11d3, 
    [ 0x8c, 0xd9, 0x00, 0x60, 0xb0, 0xfc, 0x14, 0xa3 ]};

extern(Windows)
interface nsIJARProtocolHandler : nsIProtocolHandler {
  static const char[] IID_STR = NS_IJARPROTOCOLHANDLER_IID_STR;
  static const nsIID IID = NS_IJARPROTOCOLHANDLER_IID;

  /**
     * JARCache contains the collection of open jar files.
     */
  /* readonly attribute nsIZipReaderCache JARCache; */
  nsresult GetJARCache(nsIZipReaderCache  *aJARCache);

}

