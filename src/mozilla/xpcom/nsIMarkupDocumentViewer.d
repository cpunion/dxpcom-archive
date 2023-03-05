/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIMarkupDocumentViewer.idl
 */

module mozilla.xpcom.nsIMarkupDocumentViewer;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;

public import mozilla.xpcom.nsIDOMNode; /* forward declaration */


/* starting interface:    nsIMarkupDocumentViewer */
const char[] NS_IMARKUPDOCUMENTVIEWER_IID_STR = "18cbdb18-3917-42fd-9c4a-0b2112d41a6d";

const nsIID NS_IMARKUPDOCUMENTVIEWER_IID= 
  {0x18cbdb18, 0x3917, 0x42fd, 
    [ 0x9c, 0x4a, 0x0b, 0x21, 0x12, 0xd4, 0x1a, 0x6d ]};

extern(Windows)
interface nsIMarkupDocumentViewer : nsISupports {
  static const char[] IID_STR = NS_IMARKUPDOCUMENTVIEWER_IID_STR;
  static const nsIID IID = NS_IMARKUPDOCUMENTVIEWER_IID;

  /* void scrollToNode (in nsIDOMNode node); */
  nsresult ScrollToNode(nsIDOMNode node);

  /** The amount by which to scale all text. Default is 1.0. */
  /* attribute float textZoom; */
  nsresult GetTextZoom(float *aTextZoom);
  nsresult SetTextZoom(float aTextZoom);

  /** Disable entire author style level (including HTML presentation hints) */
  /* attribute boolean authorStyleDisabled; */
  nsresult GetAuthorStyleDisabled(PRBool *aAuthorStyleDisabled);
  nsresult SetAuthorStyleDisabled(PRBool aAuthorStyleDisabled);

  /* attribute ACString defaultCharacterSet; */
  nsresult GetDefaultCharacterSet(nsACString * aDefaultCharacterSet);
  nsresult SetDefaultCharacterSet(nsACString * aDefaultCharacterSet);

  /* attribute ACString forceCharacterSet; */
  nsresult GetForceCharacterSet(nsACString * aForceCharacterSet);
  nsresult SetForceCharacterSet(nsACString * aForceCharacterSet);

  /* attribute ACString hintCharacterSet; */
  nsresult GetHintCharacterSet(nsACString * aHintCharacterSet);
  nsresult SetHintCharacterSet(nsACString * aHintCharacterSet);

  /* attribute PRInt32 hintCharacterSetSource; */
  nsresult GetHintCharacterSetSource(PRInt32 *aHintCharacterSetSource);
  nsresult SetHintCharacterSetSource(PRInt32 aHintCharacterSetSource);

  /* attribute ACString prevDocCharacterSet; */
  nsresult GetPrevDocCharacterSet(nsACString * aPrevDocCharacterSet);
  nsresult SetPrevDocCharacterSet(nsACString * aPrevDocCharacterSet);

  /**
	* Tell the container to shrink-to-fit or grow-to-fit its contents
	*/
  /* void sizeToContent (); */
  nsresult SizeToContent();

  /**
   * Options for Bidi presentation.
   *
   * Use these attributes to access the individual Bidi options.
   */
/**
   * bidiTextDirection: the default direction for the layout of bidirectional text.
   *                    1 - left to right
   *                    2 - right to left
   */
  /* attribute octet bidiTextDirection; */
  nsresult GetBidiTextDirection(PRUint8 *aBidiTextDirection);
  nsresult SetBidiTextDirection(PRUint8 aBidiTextDirection);

  /**
   * bidiTextType: the ordering of bidirectional text. This may be either "logical"
   * or "visual". Logical text will be reordered for presentation using the Unicode
   * Bidi Algorithm. Visual text will be displayed without reordering. 
   *               1 - the default order for the charset
   *               2 - logical order
   *               3 - visual order
   */
  /* attribute octet bidiTextType; */
  nsresult GetBidiTextType(PRUint8 *aBidiTextType);
  nsresult SetBidiTextType(PRUint8 aBidiTextType);

  /**
   * bidiControlsTextMode: the order of bidirectional text in form controls.
   *                       1 - logical
   *                       2 - visual
   *                       3 - like the containing document
   */
  /* attribute octet bidiControlsTextMode; */
  nsresult GetBidiControlsTextMode(PRUint8 *aBidiControlsTextMode);
  nsresult SetBidiControlsTextMode(PRUint8 aBidiControlsTextMode);

  /**
   * bidiNumeral: the type of numerals to display. 
   *              1 - depending on context, default is Arabic numerals
   *              2 - depending on context, default is Hindi numerals
   *              3 - Arabic numerals
   *              4 - Hindi numerals
   */
  /* attribute octet bidiNumeral; */
  nsresult GetBidiNumeral(PRUint8 *aBidiNumeral);
  nsresult SetBidiNumeral(PRUint8 aBidiNumeral);

  /**
   * bidiSupport: whether to use platform bidi support or Mozilla's bidi support
   *              1 - Use Mozilla's bidi support
   *              2 - Use the platform bidi support
   *              3 - Disable bidi support
   */
  /* attribute octet bidiSupport; */
  nsresult GetBidiSupport(PRUint8 *aBidiSupport);
  nsresult SetBidiSupport(PRUint8 aBidiSupport);

  /**
   * bidiCharacterSet: whether to force the user's character set
   *                   1 - use the document character set
   *                   2 - use the character set chosen by the user
   */
  /* attribute octet bidiCharacterSet; */
  nsresult GetBidiCharacterSet(PRUint8 *aBidiCharacterSet);
  nsresult SetBidiCharacterSet(PRUint8 aBidiCharacterSet);

  /**
   * Use this attribute to access all the Bidi options in one operation
   */
  /* attribute PRUint32 bidiOptions; */
  nsresult GetBidiOptions(PRUint32 *aBidiOptions);
  nsresult SetBidiOptions(PRUint32 aBidiOptions);

}

