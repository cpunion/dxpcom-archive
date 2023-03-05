/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIHTTPHeaderListener.idl
 */

module mozilla.xpcom.nsIHTTPHeaderListener;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;


/* starting interface:    nsIHTTPHeaderListener */
const char[] NS_IHTTPHEADERLISTENER_IID_STR = "8b246748-1dd2-11b2-9512-9dc84a95fc2f";

const nsIID NS_IHTTPHEADERLISTENER_IID= 
  {0x8b246748, 0x1dd2, 0x11b2, 
    [ 0x95, 0x12, 0x9d, 0xc8, 0x4a, 0x95, 0xfc, 0x2f ]};

/**
 * The nsIHTTPHeaderListener interface allows plugin authors to
 * access HTTP Response headers after issuing an
 * nsIPluginManager::{GetURL,PostURL}() call. <P>

 * IMPORTANT NOTE: The plugin author must provide an instance to
 * {GetURL,PostURL}() that implements both nsIPluginStreamListener and
 * nsIHTTPHeaderListener.  This instance is passed in through
 * {GetURL,PostURL}()'s streamListener parameter.  The browser will then
 * QI thi streamListener to see if it implements
 * nsIHTTPHeaderListener.
 */
extern(Windows)
interface nsIHTTPHeaderListener : nsISupports {
  static const char[] IID_STR = NS_IHTTPHEADERLISTENER_IID_STR;
  static const nsIID IID = NS_IHTTPHEADERLISTENER_IID;

  /**
   * Called for each HTTP Response header.
   * NOTE: You must copy the values of the params.  
   */
  /* void newResponseHeader (in string headerName, in string headerValue); */
  nsresult NewResponseHeader(char *headerName, char *headerValue);

}

