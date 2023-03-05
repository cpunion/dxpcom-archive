/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsITextAreaElement.idl
 */

module mozilla.xpcom.nsITextAreaElement;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;


/* starting interface:    nsITextAreaElement */
const char[] NS_ITEXTAREAELEMENT_IID_STR = "36878df2-1dd2-11b2-99a0-ea9fab347485";

const nsIID NS_ITEXTAREAELEMENT_IID= 
  {0x36878df2, 0x1dd2, 0x11b2, 
    [ 0x99, 0xa0, 0xea, 0x9f, 0xab, 0x34, 0x74, 0x85 ]};

/**
 * This interface is used so that the parser can notify the textarea when
 * it has finished loading content.
 */
extern(Windows)
interface nsITextAreaElement : nsISupports {
  static const char[] IID_STR = NS_ITEXTAREAELEMENT_IID_STR;
  static const nsIID IID = NS_ITEXTAREAELEMENT_IID;

  /**
   * Called when the parser is done adding child content
   * to the select during document loading.
   */
  /* void doneAddingChildren (); */
  nsresult DoneAddingChildren();

}

