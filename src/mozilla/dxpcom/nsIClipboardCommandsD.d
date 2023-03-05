/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIClipboardCommands.idl
 */

module mozilla.dxpcom.nsIClipboardCommandsD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIClipboardCommands;


public import mozilla.dxpcom.nsIClipboardCommandsD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;


/* starting wrapper class:    nsIClipboardCommands */
/**
 * An interface for embedding clients who wish to interact with
 * the system-wide OS clipboard. Mozilla does not use a private
 * clipboard, instead it places its data directly onto the system 
 * clipboard. The webshell implements this interface.
 *
 * @status FROZEN
 */
class nsIClipboardCommandsD : public nsISupportsD {

  static const nsIID IID = NS_ICLIPBOARDCOMMANDS_IID;


  alias nsIClipboardCommands InnerType;

  this(nsIClipboardCommands intr){
    super(intr);
    this.inner = intr;
  }

  nsIClipboardCommands opCast() {
    return inner;
  }

  void opAssign(nsIClipboardCommands value) {
    inner = value;
  }

  /**
   * Returns whether there is a selection and it is not read-only.
   *
   * @return <code>true</code> if the current selection can be cut,
   *          <code>false</code> otherwise.
   */
  /* boolean canCutSelection (); */
  PRBool CanCutSelection(){
    PRBool _retval;
    nsresult __result = inner.CanCutSelection(&_retval);
    CheckException(__result);
    return _retval;
  }

  /**
   * Returns whether there is a selection and it is copyable.
   *
   * @return <code>true</code> if there is a selection,
   *          <code>false</code> otherwise.
   */
  /* boolean canCopySelection (); */
  PRBool CanCopySelection(){
    PRBool _retval;
    nsresult __result = inner.CanCopySelection(&_retval);
    CheckException(__result);
    return _retval;
  }

  /**
   * Returns whether we can copy a link location.
   *
   * @return <code>true</code> if a link is selected,
   *           <code>false</code> otherwise.
   */
  /* boolean canCopyLinkLocation (); */
  PRBool CanCopyLinkLocation(){
    PRBool _retval;
    nsresult __result = inner.CanCopyLinkLocation(&_retval);
    CheckException(__result);
    return _retval;
  }

  /**
   * Returns whether we can copy an image location.
   *
   * @return <code>true</code> if an image is selected,
              <code>false</code> otherwise.
   */
  /* boolean canCopyImageLocation (); */
  PRBool CanCopyImageLocation(){
    PRBool _retval;
    nsresult __result = inner.CanCopyImageLocation(&_retval);
    CheckException(__result);
    return _retval;
  }

  /**
   * Returns whether we can copy an image's contents.
   *
   * @return <code>true</code> if an image is selected,
   *          <code>false</code> otherwise
   */
  /* boolean canCopyImageContents (); */
  PRBool CanCopyImageContents(){
    PRBool _retval;
    nsresult __result = inner.CanCopyImageContents(&_retval);
    CheckException(__result);
    return _retval;
  }

  /**
   * Returns whether the current contents of the clipboard can be
   * pasted and if the current selection is not read-only.
   *
   * @return <code>true</code> there is data to paste on the clipboard
   *          and the current selection is not read-only,
   *          <code>false</code> otherwise
   */
  /* boolean canPaste (); */
  PRBool CanPaste(){
    PRBool _retval;
    nsresult __result = inner.CanPaste(&_retval);
    CheckException(__result);
    return _retval;
  }

  /**
   * Cut the current selection onto the clipboard.
   */
  /* void cutSelection (); */
  void CutSelection(){
    nsresult __result = inner.CutSelection();
    CheckException(__result);
  }

  /**
   * Copy the current selection onto the clipboard.
   */
  /* void copySelection (); */
  void CopySelection(){
    nsresult __result = inner.CopySelection();
    CheckException(__result);
  }

  /**
   * Copy the link location of the current selection (e.g.,
   * the |href| attribute of a selected |a| tag).
   */
  /* void copyLinkLocation (); */
  void CopyLinkLocation(){
    nsresult __result = inner.CopyLinkLocation();
    CheckException(__result);
  }

  /**
   * Copy the location of the selected image.
   */
  /* void copyImageLocation (); */
  void CopyImageLocation(){
    nsresult __result = inner.CopyImageLocation();
    CheckException(__result);
  }

  /**
   * Copy the contents of the selected image.
   */
  /* void copyImageContents (); */
  void CopyImageContents(){
    nsresult __result = inner.CopyImageContents();
    CheckException(__result);
  }

  /**
   * Paste the contents of the clipboard into the current selection.
   */
  /* void paste (); */
  void Paste(){
    nsresult __result = inner.Paste();
    CheckException(__result);
  }

  /**
   * Select the entire contents.
   */
  /* void selectAll (); */
  void SelectAll(){
    nsresult __result = inner.SelectAll();
    CheckException(__result);
  }

  /**
   * Clear the current selection (if any). Insertion point ends up
   * at beginning of current selection.
   */
  /* void selectNone (); */
  void SelectNone(){
    nsresult __result = inner.SelectNone();
    CheckException(__result);
  }

private:
  nsIClipboardCommands inner;

}

