/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIFeedWriter.idl
 */

module mozilla.xpcom.nsIFeedWriter;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;

public import mozilla.xpcom.nsIDOMWindow; /* forward declaration */


/* starting interface:    nsIFeedWriter */
const char[] NS_IFEEDWRITER_IID_STR = "e4a39f75-93da-4264-8bf2-1a5bfb1f2f68";

const nsIID NS_IFEEDWRITER_IID= 
  {0xe4a39f75, 0x93da, 0x4264, 
    [ 0x8b, 0xf2, 0x1a, 0x5b, 0xfb, 0x1f, 0x2f, 0x68 ]};

/**
 * Instances of this component write UI into the display page. This component
 * is trusted so can access preferences etc, but page content isn't and so
 * cannot.
 */
extern(Windows)
interface nsIFeedWriter : nsISupports {
  static const char[] IID_STR = NS_IFEEDWRITER_IID_STR;
  static const nsIID IID = NS_IFEEDWRITER_IID;

  /**
   * Write feed UI for a particular preview DOMWindow
   * @param   window
   *          The DOMWindow of the preview page that has loaded. 
   *          window.location.href == the URI of the feed.
   */
  /* void write (in nsIDOMWindow window); */
  nsresult Write(nsIDOMWindow window);

  /**
   * Uninitialize the feed writer.
   */
  /* void close (); */
  nsresult Close();

}

