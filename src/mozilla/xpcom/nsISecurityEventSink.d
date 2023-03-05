/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsISecurityEventSink.idl
 */

module mozilla.xpcom.nsISecurityEventSink;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;

public import mozilla.xpcom.nsIURI; /* forward declaration */


/* starting interface:    nsISecurityEventSink */
const char[] NS_ISECURITYEVENTSINK_IID_STR = "a71aee68-dd38-4736-bd79-035fea1a1ec6";

const nsIID NS_ISECURITYEVENTSINK_IID= 
  {0xa71aee68, 0xdd38, 0x4736, 
    [ 0xbd, 0x79, 0x03, 0x5f, 0xea, 0x1a, 0x1e, 0xc6 ]};

extern(Windows)
interface nsISecurityEventSink : nsISupports {
  static const char[] IID_STR = NS_ISECURITYEVENTSINK_IID_STR;
  static const nsIID IID = NS_ISECURITYEVENTSINK_IID;

  /**
      * Fired when a security change occurs due to page transitions,
      * or end document load. This interface should be called by
      * a security package (eg Netscape Personal Security Manager)
      * to notify nsIWebProgressListeners that security state has
      * changed. State flags are in nsIWebProgressListener.idl
      */
  /* void onSecurityChange (in nsISupports i_Context, in unsigned long state); */
  nsresult OnSecurityChange(nsISupports i_Context, PRUint32 state);

}

