/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIXSLTProcessorObsolete.idl
 */

module mozilla.xpcom.nsIXSLTProcessorObsolete;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;

public import mozilla.xpcom.nsIDOMNode; /* forward declaration */

public import mozilla.xpcom.nsIDOMDocument; /* forward declaration */


/* starting interface:    nsIXSLTProcessorObsolete */
const char[] NS_IXSLTPROCESSOROBSOLETE_IID_STR = "3fbff728-2d20-11d3-aef3-00108300ff91";

const nsIID NS_IXSLTPROCESSOROBSOLETE_IID= 
  {0x3fbff728, 0x2d20, 0x11d3, 
    [ 0xae, 0xf3, 0x00, 0x10, 0x83, 0x00, 0xff, 0x91 ]};

/**
 * DEPRECATED! Don't use this interface! Use nsIXSLTProcessor instead!!
 */
extern(Windows)
interface nsIXSLTProcessorObsolete : nsISupports {
  static const char[] IID_STR = NS_IXSLTPROCESSOROBSOLETE_IID_STR;
  static const nsIID IID = NS_IXSLTPROCESSOROBSOLETE_IID;

  /* void transformDocument (in nsIDOMNode aSourceDOM, in nsIDOMNode aStyleDOM, in nsIDOMDocument aOutputDOC, in nsISupports aObserver); */
  nsresult TransformDocument(nsIDOMNode aSourceDOM, nsIDOMNode aStyleDOM, nsIDOMDocument aOutputDOC, nsISupports aObserver);

}

