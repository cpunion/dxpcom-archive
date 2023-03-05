/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIEditorDocShell.idl
 */

module mozilla.dxpcom.nsIEditorDocShellD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIEditorDocShell;


public import mozilla.dxpcom.nsIEditorDocShellD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;

public import mozilla.xpcom.nsIEditor;

public import mozilla.dxpcom.nsIEditorD;


/* starting wrapper class:    nsIEditorDocShell */
/**
 * nsIEditorDocShell provides a way to get an editor from
 * a specific frame in a docShell hierarchy. It is intended
 * to be only used internally. Use nsIEditingShell.getEditorForFrame
 * from out side.
 */
class nsIEditorDocShellD : public nsISupportsD {

  static const nsIID IID = NS_IEDITORDOCSHELL_IID;


  alias nsIEditorDocShell InnerType;

  this(nsIEditorDocShell intr){
    super(intr);
    this.inner = intr;
  }

  nsIEditorDocShell opCast() {
    return inner;
  }

  void opAssign(nsIEditorDocShell value) {
    inner = value;
  }

  /* attribute nsIEditor editor; */
  nsIEditorD  Editor(){
    nsIEditor value;
    nsresult __result = inner.GetEditor(&value);
    CheckException(__result);
    return new nsIEditorD(value);
  }
  void Editor(nsIEditorD  aEditor){
    nsIEditor value;
    nsresult __result = inner.SetEditor(value);
    CheckException(__result);
  }

  /* readonly attribute boolean editable; */
  PRBool Editable(){
    PRBool value;
    nsresult __result = inner.GetEditable(&value);
    CheckException(__result);
    return value;
  }

  /* readonly attribute boolean hasEditingSession; */
  PRBool HasEditingSession(){
    PRBool value;
    nsresult __result = inner.GetHasEditingSession(&value);
    CheckException(__result);
    return value;
  }

  /**
     * Make this docShell editable, setting a flag that causes
     * an editor to get created, either immediately, or after
     * a url has been loaded.
     *      @param  inWaitForUriLoad    true to wait for a URI before
     *                                  creating the editor.
     */
  /* void makeEditable (in boolean inWaitForUriLoad); */
  void MakeEditable(PRBool inWaitForUriLoad){
    nsresult __result = inner.MakeEditable(inWaitForUriLoad);
    CheckException(__result);
  }

private:
  nsIEditorDocShell inner;

}

