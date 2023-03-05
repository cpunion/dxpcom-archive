/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIClipboardCommands.idl
 */

module mozilla.xpcom.nsIClipboardCommands;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;


/* starting interface:    nsIClipboardCommands */
const char[] NS_ICLIPBOARDCOMMANDS_IID_STR = "b8100c90-73be-11d2-92a5-00105a1b0d64";

const nsIID NS_ICLIPBOARDCOMMANDS_IID= 
  {0xb8100c90, 0x73be, 0x11d2, 
    [ 0x92, 0xa5, 0x00, 0x10, 0x5a, 0x1b, 0x0d, 0x64 ]};

/**
 * An interface for embedding clients who wish to interact with
 * the system-wide OS clipboard. Mozilla does not use a private
 * clipboard, instead it places its data directly onto the system 
 * clipboard. The webshell implements this interface.
 *
 * @status FROZEN
 */
extern(Windows)
interface nsIClipboardCommands : nsISupports {
  static const char[] IID_STR = NS_ICLIPBOARDCOMMANDS_IID_STR;
  static const nsIID IID = NS_ICLIPBOARDCOMMANDS_IID;

  /**
   * Returns whether there is a selection and it is not read-only.
   *
   * @return <code>true</code> if the current selection can be cut,
   *          <code>false</code> otherwise.
   */
  /* boolean canCutSelection (); */
  nsresult CanCutSelection(PRBool *_retval);

  /**
   * Returns whether there is a selection and it is copyable.
   *
   * @return <code>true</code> if there is a selection,
   *          <code>false</code> otherwise.
   */
  /* boolean canCopySelection (); */
  nsresult CanCopySelection(PRBool *_retval);

  /**
   * Returns whether we can copy a link location.
   *
   * @return <code>true</code> if a link is selected,
   *           <code>false</code> otherwise.
   */
  /* boolean canCopyLinkLocation (); */
  nsresult CanCopyLinkLocation(PRBool *_retval);

  /**
   * Returns whether we can copy an image location.
   *
   * @return <code>true</code> if an image is selected,
              <code>false</code> otherwise.
   */
  /* boolean canCopyImageLocation (); */
  nsresult CanCopyImageLocation(PRBool *_retval);

  /**
   * Returns whether we can copy an image's contents.
   *
   * @return <code>true</code> if an image is selected,
   *          <code>false</code> otherwise
   */
  /* boolean canCopyImageContents (); */
  nsresult CanCopyImageContents(PRBool *_retval);

  /**
   * Returns whether the current contents of the clipboard can be
   * pasted and if the current selection is not read-only.
   *
   * @return <code>true</code> there is data to paste on the clipboard
   *          and the current selection is not read-only,
   *          <code>false</code> otherwise
   */
  /* boolean canPaste (); */
  nsresult CanPaste(PRBool *_retval);

  /**
   * Cut the current selection onto the clipboard.
   */
  /* void cutSelection (); */
  nsresult CutSelection();

  /**
   * Copy the current selection onto the clipboard.
   */
  /* void copySelection (); */
  nsresult CopySelection();

  /**
   * Copy the link location of the current selection (e.g.,
   * the |href| attribute of a selected |a| tag).
   */
  /* void copyLinkLocation (); */
  nsresult CopyLinkLocation();

  /**
   * Copy the location of the selected image.
   */
  /* void copyImageLocation (); */
  nsresult CopyImageLocation();

  /**
   * Copy the contents of the selected image.
   */
  /* void copyImageContents (); */
  nsresult CopyImageContents();

  /**
   * Paste the contents of the clipboard into the current selection.
   */
  /* void paste (); */
  nsresult Paste();

  /**
   * Select the entire contents.
   */
  /* void selectAll (); */
  nsresult SelectAll();

  /**
   * Clear the current selection (if any). Insertion point ends up
   * at beginning of current selection.
   */
  /* void selectNone (); */
  nsresult SelectNone();

}

