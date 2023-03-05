/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDOMHTMLSelectElement.idl
 */

module mozilla.xpcom.nsIDOMHTMLSelectElement;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsIDOMHTMLElement;
public import mozilla.xpcom.nsIDOMHTMLOptionsCollection;


/* starting interface:    nsIDOMHTMLSelectElement */
const char[] NS_IDOMHTMLSELECTELEMENT_IID_STR = "a6cf9090-15b3-11d2-932e-00805f8add32";

const nsIID NS_IDOMHTMLSELECTELEMENT_IID= 
  {0xa6cf9090, 0x15b3, 0x11d2, 
    [ 0x93, 0x2e, 0x00, 0x80, 0x5f, 0x8a, 0xdd, 0x32 ]};

/**
 * The nsIDOMHTMLSelectElement interface is the interface to a [X]HTML
 * select element.
 *
 * For more information on this interface please see
 * http://www.w3.org/TR/DOM-Level-2-HTML/
 *
 * @status FROZEN
 */
extern(Windows)
interface nsIDOMHTMLSelectElement : nsIDOMHTMLElement {
  static const char[] IID_STR = NS_IDOMHTMLSELECTELEMENT_IID_STR;
  static const nsIID IID = NS_IDOMHTMLSELECTELEMENT_IID;

  /* readonly attribute DOMString type; */
  nsresult GetType(nsAString * aType);

  /* attribute long selectedIndex; */
  nsresult GetSelectedIndex(PRInt32 *aSelectedIndex);
  nsresult SetSelectedIndex(PRInt32 aSelectedIndex);

  /* attribute DOMString value; */
  nsresult GetValue(nsAString * aValue);
  nsresult SetValue(nsAString * aValue);

  /* attribute unsigned long length; */
  nsresult GetLength(PRUint32 *aLength);
  nsresult SetLength(PRUint32 aLength);

  /* readonly attribute nsIDOMHTMLFormElement form; */
  nsresult GetForm(nsIDOMHTMLFormElement  *aForm);

  /* readonly attribute nsIDOMHTMLOptionsCollection options; */
  nsresult GetOptions(nsIDOMHTMLOptionsCollection  *aOptions);

  /* attribute boolean disabled; */
  nsresult GetDisabled(PRBool *aDisabled);
  nsresult SetDisabled(PRBool aDisabled);

  /* attribute boolean multiple; */
  nsresult GetMultiple(PRBool *aMultiple);
  nsresult SetMultiple(PRBool aMultiple);

  /* attribute DOMString name; */
  nsresult GetName(nsAString * aName);
  nsresult SetName(nsAString * aName);

  /* attribute long size; */
  nsresult GetSize(PRInt32 *aSize);
  nsresult SetSize(PRInt32 aSize);

  /* attribute long tabIndex; */
  nsresult GetTabIndex(PRInt32 *aTabIndex);
  nsresult SetTabIndex(PRInt32 aTabIndex);

  /* void add (in nsIDOMHTMLElement element, in nsIDOMHTMLElement before)  raises (DOMException); */
  nsresult Add(nsIDOMHTMLElement element, nsIDOMHTMLElement before);

  /* void remove (in long index); */
  nsresult Remove(PRInt32 index);

  /* void blur (); */
  nsresult Blur();

  /* void focus (); */
  nsresult Focus();

}

