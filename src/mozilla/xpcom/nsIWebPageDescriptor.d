/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIWebPageDescriptor.idl
 */

module mozilla.xpcom.nsIWebPageDescriptor;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;


/* starting interface:    nsIWebPageDescriptor */
const char[] NS_IWEBPAGEDESCRIPTOR_IID_STR = "6f30b676-3710-4c2c-80b1-0395fb26516e";

const nsIID NS_IWEBPAGEDESCRIPTOR_IID= 
  {0x6f30b676, 0x3710, 0x4c2c, 
    [ 0x80, 0xb1, 0x03, 0x95, 0xfb, 0x26, 0x51, 0x6e ]};

/**
 * The nsIWebPageDescriptor interface allows content being displayed in one
 * window to be loaded into another window without refetching it from the
 * network.
 *
 * @status UNDER_REVIEW
 */
extern(Windows)
interface nsIWebPageDescriptor : nsISupports {
  static const char[] IID_STR = NS_IWEBPAGEDESCRIPTOR_IID_STR;
  static const nsIID IID = NS_IWEBPAGEDESCRIPTOR_IID;

  enum { DISPLAY_AS_SOURCE = 1U };

  enum { DISPLAY_NORMAL = 2U };

  /**
  * Tells the object to load the page specified by the page descriptor
  *
  * @return NS_OK            - 
  *         NS_ERROR_FAILURE - 
  */
  /* void loadPage (in nsISupports aPageDescriptor, in unsigned long aDisplayType); */
  nsresult LoadPage(nsISupports aPageDescriptor, PRUint32 aDisplayType);

  /**
  * Retrieves the page descriptor for the curent document.
  */
  /* readonly attribute nsISupports currentDescriptor; */
  nsresult GetCurrentDescriptor(nsISupports  *aCurrentDescriptor);

}

