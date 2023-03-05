/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDOMStorage.idl
 */

module mozilla.xpcom.nsIDOMStorage;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;

alias PRUint64 DOMTimeStamp;

public import mozilla.xpcom.nsIDOMAttr; /* forward declaration */

public import mozilla.xpcom.nsIDOMCDATASection; /* forward declaration */

public import mozilla.xpcom.nsIDOMCharacterData; /* forward declaration */

public import mozilla.xpcom.nsIDOMComment; /* forward declaration */

public import mozilla.xpcom.nsIDOMDOMImplementation; /* forward declaration */
    
public import mozilla.xpcom.nsIDOMDocument; /* forward declaration */
    
public import mozilla.xpcom.nsIDOMDocumentFragment; /* forward declaration */

public import mozilla.xpcom.nsIDOMDocumentType; /* forward declaration */

public import mozilla.xpcom.nsIDOMElement; /* forward declaration */

public import mozilla.xpcom.nsIDOMEntity; /* forward declaration */
    
public import mozilla.xpcom.nsIDOMEntityReference; /* forward declaration */

public import mozilla.xpcom.nsIDOMNSDocument; /* forward declaration */

public import mozilla.xpcom.nsIDOMNamedNodeMap; /* forward declaration */

public import mozilla.xpcom.nsIDOMNode; /* forward declaration */

public import mozilla.xpcom.nsIDOMNodeList; /* forward declaration */

public import mozilla.xpcom.nsIDOMNotation; /* forward declaration */

public import mozilla.xpcom.nsIDOMProcessingInstruction; /* forward declaration */

public import mozilla.xpcom.nsIDOMText; /* forward declaration */

public import mozilla.xpcom.nsIDOMDOMStringList; /* forward declaration */

public import mozilla.xpcom.nsIDOMNameList; /* forward declaration */

//public import mozilla.xpcom.DOMException; /* forward declaration */

//public import mozilla.xpcom.RangeException; /* forward declaration */

public import mozilla.xpcom.nsIDOMEvent;

public import mozilla.xpcom.nsIDOMEventListener;

public import mozilla.xpcom.nsIDOMWindow;

public import mozilla.xpcom.nsIDOMHTMLFormElement;

public import mozilla.xpcom.nsIDOMBarProp;

public import mozilla.xpcom.nsIDOMWindowCollection;

public import mozilla.xpcom.nsIDOMHTMLCollection;

public import mozilla.xpcom.nsIDOMNavigator;

public import mozilla.xpcom.nsIDOMScreen;

public import mozilla.xpcom.nsIDOMHistory;

public import mozilla.xpcom.nsIDOMPkcs11;

public import mozilla.xpcom.nsIDOMMimeTypeArray;

public import mozilla.xpcom.nsIDOMPluginArray;

public import mozilla.xpcom.nsIDOMCrypto;

public import mozilla.xpcom.nsIDOMCRMFObject;

public import mozilla.xpcom.nsIDOMPlugin;

public import mozilla.xpcom.nsIDOMMimeType;

public import mozilla.xpcom.nsIDOMCSSRule;

public import mozilla.xpcom.nsIDOMCSSRuleList;

public import mozilla.xpcom.nsIDOMStyleSheet;

public import mozilla.xpcom.nsIDOMCSSValue;

public import mozilla.xpcom.nsIDOMMediaList;

public import mozilla.xpcom.nsIDOMCSSStyleSheet;

public import mozilla.xpcom.nsIDOMCSSStyleDeclaration;

public import mozilla.xpcom.nsIDOMAbstractView;

public import mozilla.xpcom.nsIDOMDocumentView;

public import mozilla.xpcom.nsIDOMXULSelectCntrlItemEl;

public import mozilla.xpcom.nsIDOMHTMLTableCaptionElem;

public import mozilla.xpcom.nsIDOMHTMLTableSectionElem;

public import mozilla.xpcom.nsIDOMStyleSheetList;

public import mozilla.xpcom.nsIDOMKeyEvent;

public import mozilla.xpcom.nsIDOMCounter;

public import mozilla.xpcom.nsIDOMRect;

public import mozilla.xpcom.nsIDOMRGBColor;

public import mozilla.xpcom.nsIDOMCounter;

public import mozilla.xpcom.nsIDOMCSSPrimitiveValue;

public import mozilla.xpcom.nsIDOMEventGroup;


public import mozilla.xpcom.nsIDOMStorageItem; /* forward declaration */


/* starting interface:    nsIDOMStorage */
const char[] NS_IDOMSTORAGE_IID_STR = "95cc1383-3b62-4b89-aaef-1004a513ef47";

const nsIID NS_IDOMSTORAGE_IID= 
  {0x95cc1383, 0x3b62, 0x4b89, 
    [ 0xaa, 0xef, 0x10, 0x04, 0xa5, 0x13, 0xef, 0x47 ]};

extern(Windows)
interface nsIDOMStorage : nsISupports {
  static const char[] IID_STR = NS_IDOMSTORAGE_IID_STR;
  static const nsIID IID = NS_IDOMSTORAGE_IID;

  /**
   * The number of keys stored.
   */
  /* readonly attribute unsigned long length; */
  nsresult GetLength(PRUint32 *aLength);

  /**
   * Retrieve the name of the key at a particular index.
   *
   * @param index index of the item to retrieve
   * @returns the key at index
   * @throws INDEX_SIZE_ERR if there is no key at that index
   */
  /* DOMString key (in unsigned long index); */
  nsresult Key(PRUint32 index, nsAString * _retval);

  /**
   * Retrieve an item with a given key
   *
   * @param key key to retrieve
   * @returns found item or null if the key was not found
   */
  /* nsIDOMStorageItem getItem (in DOMString key); */
  nsresult GetItem(nsAString * key, nsIDOMStorageItem *_retval);

  /**
   * Assign a value with a key. If the key does not exist already, a new
   * key is added associated with that value. If the key already exists,
   * then the existing value is replaced with a new value.
   *
   * @param key key to set
   * @param data data to associate with the key
   * @returns found item or null if the key was not found
   */
  /* void setItem (in DOMString key, in DOMString data); */
  nsresult SetItem(nsAString * key, nsAString * data);

  /**
   * Remove a key and its corresponding value.
   *
   * @param key key to remove
   */
  /* void removeItem (in DOMString key); */
  nsresult RemoveItem(nsAString * key);

}

