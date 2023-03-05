/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsITextServicesFilter.idl
 */

module mozilla.xpcom.nsITextServicesFilter;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;

public import mozilla.xpcom.nsIDOMNode; /* forward declaration */


/* starting interface:    nsITextServicesFilter */
const char[] NS_ITEXTSERVICESFILTER_IID_STR = "5bec321f-59ac-413a-a4ad-8a8d7c50a0d0";

const nsIID NS_ITEXTSERVICESFILTER_IID= 
  {0x5bec321f, 0x59ac, 0x413a, 
    [ 0xa4, 0xad, 0x8a, 0x8d, 0x7c, 0x50, 0xa0, 0xd0 ]};

extern(Windows)
interface nsITextServicesFilter : nsISupports {
  static const char[] IID_STR = NS_ITEXTSERVICESFILTER_IID_STR;
  static const nsIID IID = NS_ITEXTSERVICESFILTER_IID;

  /**
   * Indicates whether the content node should be skipped by the iterator
   *  @param aNode - node to skip
   */
  /* boolean skip (in nsIDOMNode aNode); */
  nsresult Skip(nsIDOMNode aNode, PRBool *_retval);

}

