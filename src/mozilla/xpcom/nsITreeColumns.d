/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsITreeColumns.idl
 */

module mozilla.xpcom.nsITreeColumns;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;

public import mozilla.xpcom.nsITreeColumns; /* forward declaration */

public import mozilla.xpcom.nsIDOMElement; /* forward declaration */

public import mozilla.xpcom.nsIAtom; /* forward declaration */


/* starting interface:    nsITreeColumn */
const char[] NS_ITREECOLUMN_IID_STR = "58a8574d-15a8-4678-99a5-e1be56104093";

const nsIID NS_ITREECOLUMN_IID= 
  {0x58a8574d, 0x15a8, 0x4678, 
    [ 0x99, 0xa5, 0xe1, 0xbe, 0x56, 0x10, 0x40, 0x93 ]};

extern(Windows)
interface nsITreeColumn : nsISupports {
  static const char[] IID_STR = NS_ITREECOLUMN_IID_STR;
  static const nsIID IID = NS_ITREECOLUMN_IID;

  /* readonly attribute nsIDOMElement element; */
  nsresult GetElement(nsIDOMElement  *aElement);

  /* readonly attribute nsITreeColumns columns; */
  nsresult GetColumns(nsITreeColumns  *aColumns);

  /* readonly attribute long x; */
  nsresult GetX(PRInt32 *aX);

  /* readonly attribute long width; */
  nsresult GetWidth(PRInt32 *aWidth);

  /* readonly attribute AString id; */
  nsresult GetId(nsAString * aId);

  /* [noscript] void getIdConst ([shared] out wstring idConst); */
  nsresult GetIdConst(PRUnichar **idConst);

  /* [noscript] readonly attribute nsIAtom atom; */
  nsresult GetAtom(nsIAtom  *aAtom);

  /* readonly attribute long index; */
  nsresult GetIndex(PRInt32 *aIndex);

  /* readonly attribute boolean primary; */
  nsresult GetPrimary(PRBool *aPrimary);

  /* readonly attribute boolean cycler; */
  nsresult GetCycler(PRBool *aCycler);

  /* readonly attribute boolean editable; */
  nsresult GetEditable(PRBool *aEditable);

  enum { TYPE_TEXT = 1 };

  enum { TYPE_CHECKBOX = 2 };

  enum { TYPE_PROGRESSMETER = 3 };

  /* readonly attribute short type; */
  nsresult GetType(PRInt16 *aType);

  /* nsITreeColumn getNext (); */
  nsresult GetNext(nsITreeColumn *_retval);

  /* nsITreeColumn getPrevious (); */
  nsresult GetPrevious(nsITreeColumn *_retval);

  /* void invalidate (); */
  nsresult Invalidate();

}

public import mozilla.xpcom.nsITreeBoxObject; /* forward declaration */


/* starting interface:    nsITreeColumns */
const char[] NS_ITREECOLUMNS_IID_STR = "fcc7b6b5-f7d7-4e57-abd1-080602deb21d";

const nsIID NS_ITREECOLUMNS_IID= 
  {0xfcc7b6b5, 0xf7d7, 0x4e57, 
    [ 0xab, 0xd1, 0x08, 0x06, 0x02, 0xde, 0xb2, 0x1d ]};

extern(Windows)
interface nsITreeColumns : nsISupports {
  static const char[] IID_STR = NS_ITREECOLUMNS_IID_STR;
  static const nsIID IID = NS_ITREECOLUMNS_IID;

  /**
   * The tree widget for these columns.
   */
  /* readonly attribute nsITreeBoxObject tree; */
  nsresult GetTree(nsITreeBoxObject  *aTree);

  /**
   * The number of columns.
   */
  /* readonly attribute long count; */
  nsresult GetCount(PRInt32 *aCount);

  /**
   * Get the first/last column.
   */
  /* nsITreeColumn getFirstColumn (); */
  nsresult GetFirstColumn(nsITreeColumn *_retval);

  /* nsITreeColumn getLastColumn (); */
  nsresult GetLastColumn(nsITreeColumn *_retval);

  /**
   * Attribute based column getters.
   */
  /* nsITreeColumn getPrimaryColumn (); */
  nsresult GetPrimaryColumn(nsITreeColumn *_retval);

  /* nsITreeColumn getSortedColumn (); */
  nsresult GetSortedColumn(nsITreeColumn *_retval);

  /* nsITreeColumn getKeyColumn (); */
  nsresult GetKeyColumn(nsITreeColumn *_retval);

  /**
   * Get the column for the given element.
   */
  /* nsITreeColumn getColumnFor (in nsIDOMElement element); */
  nsresult GetColumnFor(nsIDOMElement element, nsITreeColumn *_retval);

  /**
   * Parametric column getters.
   */
  /* nsITreeColumn getNamedColumn (in AString id); */
  nsresult GetNamedColumn(nsAString * id, nsITreeColumn *_retval);

  /* nsITreeColumn getColumnAt (in long index); */
  nsresult GetColumnAt(PRInt32 index, nsITreeColumn *_retval);

  /**
   * This method is called whenever a treecol is added or removed and
   * the column cache needs to be rebuilt.
   */
  /* void invalidateColumns (); */
  nsresult InvalidateColumns();

  /* void restoreNaturalOrder (); */
  nsresult RestoreNaturalOrder();

}

