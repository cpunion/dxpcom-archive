/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIBoxObject.idl
 */

module mozilla.xpcom.nsIBoxObject;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;
public import mozilla.xpcom.nsIBoxLayoutManager;
public import mozilla.xpcom.nsIBoxPaintManager;

public import mozilla.xpcom.nsIDOMElement; /* forward declaration */


/* starting interface:    nsIBoxObject */
const char[] NS_IBOXOBJECT_IID_STR = "caabf76f-9d35-401f-beac-3955817c645c";

const nsIID NS_IBOXOBJECT_IID= 
  {0xcaabf76f, 0x9d35, 0x401f, 
    [ 0xbe, 0xac, 0x39, 0x55, 0x81, 0x7c, 0x64, 0x5c ]};

extern(Windows)
interface nsIBoxObject : nsISupports {
  static const char[] IID_STR = NS_IBOXOBJECT_IID_STR;
  static const nsIID IID = NS_IBOXOBJECT_IID;

  /* readonly attribute nsIDOMElement element; */
  nsresult GetElement(nsIDOMElement  *aElement);

  /* attribute nsIBoxLayoutManager layoutManager; */
  nsresult GetLayoutManager(nsIBoxLayoutManager  *aLayoutManager);
  nsresult SetLayoutManager(nsIBoxLayoutManager  aLayoutManager);

  /* attribute nsIBoxPaintManager paintManager; */
  nsresult GetPaintManager(nsIBoxPaintManager  *aPaintManager);
  nsresult SetPaintManager(nsIBoxPaintManager  aPaintManager);

  /* readonly attribute long x; */
  nsresult GetX(PRInt32 *aX);

  /* readonly attribute long y; */
  nsresult GetY(PRInt32 *aY);

  /* readonly attribute long screenX; */
  nsresult GetScreenX(PRInt32 *aScreenX);

  /* readonly attribute long screenY; */
  nsresult GetScreenY(PRInt32 *aScreenY);

  /* readonly attribute long width; */
  nsresult GetWidth(PRInt32 *aWidth);

  /* readonly attribute long height; */
  nsresult GetHeight(PRInt32 *aHeight);

  /* nsISupports getPropertyAsSupports (in wstring propertyName); */
  nsresult GetPropertyAsSupports(PRUnichar *propertyName, nsISupports *_retval);

  /* void setPropertyAsSupports (in wstring propertyName, in nsISupports value); */
  nsresult SetPropertyAsSupports(PRUnichar *propertyName, nsISupports value);

  /* wstring getProperty (in wstring propertyName); */
  nsresult GetProperty(PRUnichar *propertyName, PRUnichar **_retval);

  /* void setProperty (in wstring propertyName, in wstring propertyValue); */
  nsresult SetProperty(PRUnichar *propertyName, PRUnichar *propertyValue);

  /* void removeProperty (in wstring propertyName); */
  nsresult RemoveProperty(PRUnichar *propertyName);

  /* readonly attribute nsIDOMElement parentBox; */
  nsresult GetParentBox(nsIDOMElement  *aParentBox);

  /* readonly attribute nsIDOMElement firstChild; */
  nsresult GetFirstChild(nsIDOMElement  *aFirstChild);

  /* readonly attribute nsIDOMElement lastChild; */
  nsresult GetLastChild(nsIDOMElement  *aLastChild);

  /* readonly attribute nsIDOMElement nextSibling; */
  nsresult GetNextSibling(nsIDOMElement  *aNextSibling);

  /* readonly attribute nsIDOMElement previousSibling; */
  nsresult GetPreviousSibling(nsIDOMElement  *aPreviousSibling);

  /* wstring getLookAndFeelMetric (in wstring propertyName); */
  nsresult GetLookAndFeelMetric(PRUnichar *propertyName, PRUnichar **_retval);

}

