/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIEditorStyleSheets.idl
 */

module mozilla.xpcom.nsIEditorStyleSheets;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;


/* starting interface:    nsIEditorStyleSheets */
const char[] NS_IEDITORSTYLESHEETS_IID_STR = "4805e682-49b9-11d3-9ce4-ed60bd6cb5bc";

const nsIID NS_IEDITORSTYLESHEETS_IID= 
  {0x4805e682, 0x49b9, 0x11d3, 
    [ 0x9c, 0xe4, 0xed, 0x60, 0xbd, 0x6c, 0xb5, 0xbc ]};

extern(Windows)
interface nsIEditorStyleSheets : nsISupports {
  static const char[] IID_STR = NS_IEDITORSTYLESHEETS_IID_STR;
  static const nsIID IID = NS_IEDITORSTYLESHEETS_IID;

  /** load and apply the style sheet, specified by aURL, to the
    * editor's document, replacing the last style sheet added (if any).
    * This can involve asynchronous network I/O.
    * 
    * @param aURL         The style sheet to be loaded and applied.
    */
  /* void replaceStyleSheet (in AString aURL); */
  nsresult ReplaceStyleSheet(nsAString * aURL);

  /** Add the given Style Sheet to the editor's document,
    * on top of any that are already there.
    * This is always synchronous.
    *
    * @param aURL  The style sheet to be  applied.
    */
  /* void addStyleSheet (in AString aURL); */
  nsresult AddStyleSheet(nsAString * aURL);

  /** load and apply the style sheet, specified by aURL, to the
    * editor's document, replacing the last style sheet added (if any).
    * This is always synchronous.
    * 
    * @param aURL         The style sheet to be loaded and applied.
    */
  /* void replaceOverrideStyleSheet (in AString aURL); */
  nsresult ReplaceOverrideStyleSheet(nsAString * aURL);

  /** load and apply an Override style sheet, specified by aURL, to
    * the editor's document, on top of any that are already there.
    * IMPORTANT: This is assumed to be synchronous:
    *            URL is a local file with no @import used
    * This action is not undoable.
    * It is not intended for use by "user", only editor developers
    *   to change display behavior for editing (like showing special cursors)
    *   that will not be affected by loading other "document" style sheets
    *   loaded using addStyleSheet or replaceStyleSheet.
    *
    * @param aURL         The style sheet to be loaded and applied.
    */
  /* void addOverrideStyleSheet (in AString aURL); */
  nsresult AddOverrideStyleSheet(nsAString * aURL);

  /** Remove the given Style Sheet from the editor's document
    * This is always synchronous
    *
    * @param aURL  The style sheet to be removed
    */
  /* void removeStyleSheet (in AString aURL); */
  nsresult RemoveStyleSheet(nsAString * aURL);

  /** Remove the given Override Style Sheet from the editor's document
    * This is always synchronous
    *
    * @param aURL  The style sheet to be removed.
    */
  /* void removeOverrideStyleSheet (in AString aURL); */
  nsresult RemoveOverrideStyleSheet(nsAString * aURL);

  /** Enable or disable the given Style Sheet from the editor's document
    * This is always synchronous
    *
    * @param aURL  The style sheet to be removed
    */
  /* void enableStyleSheet (in AString aURL, in PRBool aEnable); */
  nsresult EnableStyleSheet(nsAString * aURL, PRBool aEnable);

  /** Get the nsICSSStyleSheet associated with the given URL.
    *
    * @param aURL         The style sheet's URL
    * @return             the style sheet
    */
  /* [noscript] nsICSSStyleSheet getStyleSheetForURL (in AString aURL); */
  nsresult GetStyleSheetForURL(nsAString * aURL, nsICSSStyleSheet * *_retval);

  /** Get the URL associated with the given nsICSSStyleSheet.
    *
    * @param aStyleSheet  The style sheet
    * @return             the style sheet's URL
    */
  /* [noscript] AString getURLForStyleSheet (in nsICSSStyleSheet aStyleSheet); */
  nsresult GetURLForStyleSheet(nsICSSStyleSheet * aStyleSheet, nsAString * _retval);

}

