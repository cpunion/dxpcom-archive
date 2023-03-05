/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDOMXULTreeElement.idl
 */

module mozilla.xpcom.nsIDOMXULTreeElement;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsIDOMXULElement;
public import mozilla.xpcom.nsIDOMElement;

public import mozilla.xpcom.nsITreeColumns; /* forward declaration */

public import mozilla.xpcom.nsITreeView; /* forward declaration */

public import mozilla.xpcom.nsIDOMXULTextboxElement;


/* starting interface:    nsIDOMXULTreeElement */
const char[] NS_IDOMXULTREEELEMENT_IID_STR = "1f8111b2-d44d-4d11-845a-a70ae06b7d04";

const nsIID NS_IDOMXULTREEELEMENT_IID= 
  {0x1f8111b2, 0xd44d, 0x4d11, 
    [ 0x84, 0x5a, 0xa7, 0x0a, 0xe0, 0x6b, 0x7d, 0x04 ]};

/**
 * @status UNDER_DEVELOPMENT
 */
extern(Windows)
interface nsIDOMXULTreeElement : nsIDOMXULElement {
  static const char[] IID_STR = NS_IDOMXULTREEELEMENT_IID_STR;
  static const nsIID IID = NS_IDOMXULTREEELEMENT_IID;

  /* readonly attribute nsITreeColumns columns; */
  nsresult GetColumns(nsITreeColumns  *aColumns);

  /* attribute nsITreeView view; */
  nsresult GetView(nsITreeView  *aView);
  nsresult SetView(nsITreeView  aView);

  /* readonly attribute nsIDOMElement body; */
  nsresult GetBody(nsIDOMElement  *aBody);

  /* attribute boolean editable; */
  nsresult GetEditable(PRBool *aEditable);
  nsresult SetEditable(PRBool aEditable);

  /* readonly attribute nsIDOMXULTextBoxElement inputField; */
  nsresult GetInputField(nsIDOMXULTextBoxElement  *aInputField);

}

