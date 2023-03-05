/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIEditorDocShell.idl
 */

module mozilla.xpcom.nsIEditorDocShell;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;

public import mozilla.xpcom.nsIEditor; /* forward declaration */


/* starting interface:    nsIEditorDocShell */
const char[] NS_IEDITORDOCSHELL_IID_STR = "3bdb8f01-f141-11d4-a73c-fba4aba8a3fc";

const nsIID NS_IEDITORDOCSHELL_IID= 
  {0x3bdb8f01, 0xf141, 0x11d4, 
    [ 0xa7, 0x3c, 0xfb, 0xa4, 0xab, 0xa8, 0xa3, 0xfc ]};

/**
 * nsIEditorDocShell provides a way to get an editor from
 * a specific frame in a docShell hierarchy. It is intended
 * to be only used internally. Use nsIEditingShell.getEditorForFrame
 * from out side.
 */
extern(Windows)
interface nsIEditorDocShell : nsISupports {
  static const char[] IID_STR = NS_IEDITORDOCSHELL_IID_STR;
  static const nsIID IID = NS_IEDITORDOCSHELL_IID;

  /* attribute nsIEditor editor; */
  nsresult GetEditor(nsIEditor  *aEditor);
  nsresult SetEditor(nsIEditor  aEditor);

  /* readonly attribute boolean editable; */
  nsresult GetEditable(PRBool *aEditable);

  /* readonly attribute boolean hasEditingSession; */
  nsresult GetHasEditingSession(PRBool *aHasEditingSession);

  /**
     * Make this docShell editable, setting a flag that causes
     * an editor to get created, either immediately, or after
     * a url has been loaded.
     *      @param  inWaitForUriLoad    true to wait for a URI before
     *                                  creating the editor.
     */
  /* void makeEditable (in boolean inWaitForUriLoad); */
  nsresult MakeEditable(PRBool inWaitForUriLoad);

}

