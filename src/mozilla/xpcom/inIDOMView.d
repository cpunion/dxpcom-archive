/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM inIDOMView.idl
 */

module mozilla.xpcom.inIDOMView;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;

public import mozilla.xpcom.nsIDOMNode; /* forward declaration */


/* starting interface:    inIDOMView */
const char[] INIDOMVIEW_IID_STR = "3eb4c760-dffd-4983-94a8-18bcb99100e4";

const nsIID INIDOMVIEW_IID= 
  {0x3eb4c760, 0xdffd, 0x4983, 
    [ 0x94, 0xa8, 0x18, 0xbc, 0xb9, 0x91, 0x00, 0xe4 ]};

extern(Windows)
interface inIDOMView : nsISupports {
  static const char[] IID_STR = INIDOMVIEW_IID_STR;
  static const nsIID IID = INIDOMVIEW_IID;

  /* attribute nsIDOMNode rootNode; */
  nsresult GetRootNode(nsIDOMNode  *aRootNode);
  nsresult SetRootNode(nsIDOMNode  aRootNode);

  /* attribute boolean showAnonymousContent; */
  nsresult GetShowAnonymousContent(PRBool *aShowAnonymousContent);
  nsresult SetShowAnonymousContent(PRBool aShowAnonymousContent);

  /* attribute boolean showSubDocuments; */
  nsresult GetShowSubDocuments(PRBool *aShowSubDocuments);
  nsresult SetShowSubDocuments(PRBool aShowSubDocuments);

  /* attribute boolean showWhitespaceNodes; */
  nsresult GetShowWhitespaceNodes(PRBool *aShowWhitespaceNodes);
  nsresult SetShowWhitespaceNodes(PRBool aShowWhitespaceNodes);

  /* attribute unsigned long whatToShow; */
  nsresult GetWhatToShow(PRUint32 *aWhatToShow);
  nsresult SetWhatToShow(PRUint32 aWhatToShow);

  /* nsIDOMNode getNodeFromRowIndex (in long rowIndex); */
  nsresult GetNodeFromRowIndex(PRInt32 rowIndex, nsIDOMNode *_retval);

  /* long getRowIndexFromNode (in nsIDOMNode node); */
  nsresult GetRowIndexFromNode(nsIDOMNode node, PRInt32 *_retval);

  /* void rebuild (); */
  nsresult Rebuild();

}

