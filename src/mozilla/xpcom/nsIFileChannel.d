/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIFileChannel.idl
 */

module mozilla.xpcom.nsIFileChannel;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsIChannel;

public import mozilla.xpcom.nsIFile; /* forward declaration */


/* starting interface:    nsIFileChannel */
const char[] NS_IFILECHANNEL_IID_STR = "68a26506-f947-11d3-8cda-0060b0fc14a3";

const nsIID NS_IFILECHANNEL_IID= 
  {0x68a26506, 0xf947, 0x11d3, 
    [ 0x8c, 0xda, 0x00, 0x60, 0xb0, 0xfc, 0x14, 0xa3 ]};

/**
 * nsIFileChannel
 */
extern(Windows)
interface nsIFileChannel : nsIChannel {
  static const char[] IID_STR = NS_IFILECHANNEL_IID_STR;
  static const nsIID IID = NS_IFILECHANNEL_IID;

  /* readonly attribute nsIFile file; */
  nsresult GetFile(nsIFile  *aFile);

}

