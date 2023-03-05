/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIEditorObserver.idl
 */

module mozilla.xpcom.nsIEditorObserver;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;


/* starting interface:    nsIEditorObserver */
const char[] NS_IEDITOROBSERVER_IID_STR = "a6cf9125-15b3-11d2-932e-00805f8add32";

const nsIID NS_IEDITOROBSERVER_IID= 
  {0xa6cf9125, 0x15b3, 0x11d2, 
    [ 0x93, 0x2e, 0x00, 0x80, 0x5f, 0x8a, 0xdd, 0x32 ]};

/**
 * A generic editor observer interface. 
 * <P>
 * nsIEditorObserver is the interface used by applications wishing to be notified
 * when the editor has completed a user action. 
 *
 */
extern(Windows)
interface nsIEditorObserver : nsISupports {
  static const char[] IID_STR = NS_IEDITOROBSERVER_IID_STR;
  static const nsIID IID = NS_IEDITOROBSERVER_IID;

  /** 
   * Called after the editor completes a user action.
   */
  /* void EditAction (); */
  nsresult EditAction();

}

