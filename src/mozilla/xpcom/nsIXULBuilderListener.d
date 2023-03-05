/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIXULBuilderListener.idl
 */

module mozilla.xpcom.nsIXULBuilderListener;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;

public import mozilla.xpcom.nsIXULTemplateBuilder; /* forward declaration */


/* starting interface:    nsIXULBuilderListener */
const char[] NS_IXULBUILDERLISTENER_IID_STR = "ac46be8f-c863-4c23-84a2-d0fcc8dfa9f4";

const nsIID NS_IXULBUILDERLISTENER_IID= 
  {0xac46be8f, 0xc863, 0x4c23, 
    [ 0x84, 0xa2, 0xd0, 0xfc, 0xc8, 0xdf, 0xa9, 0xf4 ]};

extern(Windows)
interface nsIXULBuilderListener : nsISupports {
  static const char[] IID_STR = NS_IXULBUILDERLISTENER_IID_STR;
  static const nsIID IID = NS_IXULBUILDERLISTENER_IID;

  /**
   * Called before a template builder rebuilds its content.
   * @param aBuilder the template builder that rebuilds the content.
   */
  /* void willRebuild (in nsIXULTemplateBuilder aBuilder); */
  nsresult WillRebuild(nsIXULTemplateBuilder aBuilder);

  /**
   * Called after a template builder has rebuilt its content.
   * @param aBuilder the template builder that has rebuilt the content.
   */
  /* void didRebuild (in nsIXULTemplateBuilder aBuilder); */
  nsresult DidRebuild(nsIXULTemplateBuilder aBuilder);

}

