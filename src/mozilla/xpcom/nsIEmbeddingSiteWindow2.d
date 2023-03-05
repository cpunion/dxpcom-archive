/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIEmbeddingSiteWindow2.idl
 */

module mozilla.xpcom.nsIEmbeddingSiteWindow2;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsIEmbeddingSiteWindow;


/* starting interface:    nsIEmbeddingSiteWindow2 */
const char[] NS_IEMBEDDINGSITEWINDOW2_IID_STR = "e932bf55-0a64-4beb-923a-1f32d3661044";

const nsIID NS_IEMBEDDINGSITEWINDOW2_IID= 
  {0xe932bf55, 0x0a64, 0x4beb, 
    [ 0x92, 0x3a, 0x1f, 0x32, 0xd3, 0x66, 0x10, 0x44 ]};

/**
 * The nsIEmbeddingSiteWindow is implemented by the embedder to provide
 * Gecko with the means to call up to the host to perform basic windowing
 * operations such as resizing and showing.
 *
 * Changes from version 1 to version 2:
 * A new method: blur()
 */
extern(Windows)
interface nsIEmbeddingSiteWindow2 : nsIEmbeddingSiteWindow {
  static const char[] IID_STR = NS_IEMBEDDINGSITEWINDOW2_IID_STR;
  static const nsIID IID = NS_IEMBEDDINGSITEWINDOW2_IID;

  /**
     * Blur the window. This should unfocus the window and send an onblur event.
     */
  /* void blur (); */
  nsresult Blur();

}

