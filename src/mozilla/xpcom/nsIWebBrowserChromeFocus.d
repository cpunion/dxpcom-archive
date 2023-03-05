/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIWebBrowserChromeFocus.idl
 */

module mozilla.xpcom.nsIWebBrowserChromeFocus;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;


/* starting interface:    nsIWebBrowserChromeFocus */
const char[] NS_IWEBBROWSERCHROMEFOCUS_IID_STR = "d2206418-1dd1-11b2-8e55-acddcd2bcfb8";

const nsIID NS_IWEBBROWSERCHROMEFOCUS_IID= 
  {0xd2206418, 0x1dd1, 0x11b2, 
    [ 0x8e, 0x55, 0xac, 0xdd, 0xcd, 0x2b, 0xcf, 0xb8 ]};

/**
 * The nsIWebBrowserChromeFocus is implemented by the same object as the
 * nsIEmbeddingSiteWindow. It represents the focus up-calls from mozilla
 * to the embedding chrome. See mozilla bug #70224 for gratuitous info.
 *
 * @status FROZEN
 */
extern(Windows)
interface nsIWebBrowserChromeFocus : nsISupports {
  static const char[] IID_STR = NS_IWEBBROWSERCHROMEFOCUS_IID_STR;
  static const nsIID IID = NS_IWEBBROWSERCHROMEFOCUS_IID;

  /**
     * Set the focus at the next focusable element in the chrome.
     */
  /* void focusNextElement (); */
  nsresult FocusNextElement();

  /**
     * Set the focus at the previous focusable element in the chrome.
     */
  /* void focusPrevElement (); */
  nsresult FocusPrevElement();

}

