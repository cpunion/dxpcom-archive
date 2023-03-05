/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIPluginDocument.idl
 */

module mozilla.xpcom.nsIPluginDocument;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;
public import mozilla.xpcom.nsIStreamListener;


/* starting interface:    nsIPluginDocument */
const char[] NS_IPLUGINDOCUMENT_IID_STR = "0d8129f1-5a55-4eaa-851f-15e43ce3d183";

const nsIID NS_IPLUGINDOCUMENT_IID= 
  {0x0d8129f1, 0x5a55, 0x4eaa, 
    [ 0x85, 0x1f, 0x15, 0xe4, 0x3c, 0xe3, 0xd1, 0x83 ]};

extern(Windows)
interface nsIPluginDocument : nsISupports {
  static const char[] IID_STR = NS_IPLUGINDOCUMENT_IID_STR;
  static const nsIID IID = NS_IPLUGINDOCUMENT_IID;

  /**
  * Sets the stream listener for this plugin document 
  */
  /* void setStreamListener (in nsIStreamListener aStreamListener); */
  nsresult SetStreamListener(nsIStreamListener aStreamListener);

  /**
  * Causes the plugin to print in full-page mode
  */
  /* void print (); */
  nsresult Print();

}

