/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIPluginInputStream.idl
 */

module mozilla.xpcom.nsIPluginInputStream;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsIInputStream;
public import mozilla.xpcom.nspluginroot;


/* starting interface:    nsIPluginInputStream */
const char[] NS_IPLUGININPUTSTREAM_IID_STR = "af160530-542a-11d2-8164-006008119d7a";

const nsIID NS_IPLUGININPUTSTREAM_IID= 
  {0xaf160530, 0x542a, 0x11d2, 
    [ 0x81, 0x64, 0x00, 0x60, 0x08, 0x11, 0x9d, 0x7a ]};

/**
 * The nsIPluginInputStream interface ...
 */
extern(Windows)
interface nsIPluginInputStream : nsIInputStream {
  static const char[] IID_STR = NS_IPLUGININPUTSTREAM_IID_STR;
  static const nsIID IID = NS_IPLUGININPUTSTREAM_IID;

  /**
   *  Corresponds to NPStream's lastmodified field.)
   */
  /* void getLastModified (out unsigned long aResult); */
  nsresult GetLastModified(PRUint32 *aResult);

  /* void requestRead (out nsByteRange aRangeList); */
  nsresult RequestRead(nsByteRange *aRangeList);

}

