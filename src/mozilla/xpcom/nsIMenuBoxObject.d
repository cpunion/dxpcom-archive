/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIMenuBoxObject.idl
 */

module mozilla.xpcom.nsIMenuBoxObject;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsIBoxObject;

public import mozilla.xpcom.nsIDOMElement; /* forward declaration */

public import mozilla.xpcom.nsIDOMKeyEvent; /* forward declaration */


/* starting interface:    nsIMenuBoxObject */
const char[] NS_IMENUBOXOBJECT_IID_STR = "f5099746-5049-4e81-a03e-945d5110fee2";

const nsIID NS_IMENUBOXOBJECT_IID= 
  {0xf5099746, 0x5049, 0x4e81, 
    [ 0xa0, 0x3e, 0x94, 0x5d, 0x51, 0x10, 0xfe, 0xe2 ]};

extern(Windows)
interface nsIMenuBoxObject : nsISupports {
  static const char[] IID_STR = NS_IMENUBOXOBJECT_IID_STR;
  static const nsIID IID = NS_IMENUBOXOBJECT_IID;

  /* void openMenu (in boolean openFlag); */
  nsresult OpenMenu(PRBool openFlag);

  /* attribute nsIDOMElement activeChild; */
  nsresult GetActiveChild(nsIDOMElement  *aActiveChild);
  nsresult SetActiveChild(nsIDOMElement  aActiveChild);

  /* boolean handleKeyPress (in nsIDOMKeyEvent keyEvent); */
  nsresult HandleKeyPress(nsIDOMKeyEvent keyEvent, PRBool *_retval);

}

