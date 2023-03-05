/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIContentViewerEdit.idl
 */

module mozilla.xpcom.nsIContentViewerEdit;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;


/* starting interface:    nsIContentViewerEdit */
const char[] NS_ICONTENTVIEWEREDIT_IID_STR = "1691a02f-53b2-4cb8-8769-48e7efc908b8";

const nsIID NS_ICONTENTVIEWEREDIT_IID= 
  {0x1691a02f, 0x53b2, 0x4cb8, 
    [ 0x87, 0x69, 0x48, 0xe7, 0xef, 0xc9, 0x08, 0xb8 ]};

extern(Windows)
interface nsIContentViewerEdit : nsISupports {
  static const char[] IID_STR = NS_ICONTENTVIEWEREDIT_IID_STR;
  static const nsIID IID = NS_ICONTENTVIEWEREDIT_IID;

  /* void search (); */
  nsresult Search();

  /* readonly attribute boolean searchable; */
  nsresult GetSearchable(PRBool *aSearchable);

  /* void clearSelection (); */
  nsresult ClearSelection();

  /* void selectAll (); */
  nsresult SelectAll();

  /* void copySelection (); */
  nsresult CopySelection();

  /* readonly attribute boolean copyable; */
  nsresult GetCopyable(PRBool *aCopyable);

  /* void copyLinkLocation (); */
  nsresult CopyLinkLocation();

  /* readonly attribute boolean inLink; */
  nsresult GetInLink(PRBool *aInLink);

  enum { COPY_IMAGE_TEXT = 1 };

  enum { COPY_IMAGE_HTML = 2 };

  enum { COPY_IMAGE_DATA = 4 };

  enum { COPY_IMAGE_ALL = -1 };

  /* void copyImage (in long aCopyFlags); */
  nsresult CopyImage(PRInt32 aCopyFlags);

  /* readonly attribute boolean inImage; */
  nsresult GetInImage(PRBool *aInImage);

  /* void cutSelection (); */
  nsresult CutSelection();

  /* readonly attribute boolean cutable; */
  nsresult GetCutable(PRBool *aCutable);

  /* void paste (); */
  nsresult Paste();

  /* readonly attribute boolean pasteable; */
  nsresult GetPasteable(PRBool *aPasteable);

  /* AString getContents (in string aMimeType, in boolean aSelectionOnly); */
  nsresult GetContents(char *aMimeType, PRBool aSelectionOnly, nsAString * _retval);

  /* readonly attribute boolean canGetContents; */
  nsresult GetCanGetContents(PRBool *aCanGetContents);

}

