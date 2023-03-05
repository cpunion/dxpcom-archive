/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIAccessibilityService.idl
 */

module mozilla.xpcom.nsIAccessibilityService;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;
public import mozilla.xpcom.nsIAccessibleRetrieval;


/* starting interface:    nsIAccessibilityService */
const char[] NS_IACCESSIBILITYSERVICE_IID_STR = "0e80f152-d676-4fba-8862-9dc4eb761442";

const nsIID NS_IACCESSIBILITYSERVICE_IID= 
  {0x0e80f152, 0xd676, 0x4fba, 
    [ 0x88, 0x62, 0x9d, 0xc4, 0xeb, 0x76, 0x14, 0x42 ]};

extern(Windows)
interface nsIAccessibilityService : nsIAccessibleRetrieval {
  static const char[] IID_STR = NS_IACCESSIBILITYSERVICE_IID_STR;
  static const nsIID IID = NS_IACCESSIBILITYSERVICE_IID;

  /* nsIAccessible createOuterDocAccessible (in nsIDOMNode aNode); */
  nsresult CreateOuterDocAccessible(nsIDOMNode aNode, nsIAccessible *_retval);

  /* nsIAccessible createRootAccessible (in nsIPresShell aShell, in nsIDocument aDocument); */
  nsresult CreateRootAccessible(nsIPresShell aShell, nsIDocument aDocument, nsIAccessible *_retval);

  /* nsIAccessible createHTML4ButtonAccessible (in nsISupports aFrame); */
  nsresult CreateHTML4ButtonAccessible(nsISupports aFrame, nsIAccessible *_retval);

  /* nsIAccessible createXULAlertAccessible (in nsIDOMNode aNode); */
  nsresult CreateXULAlertAccessible(nsIDOMNode aNode, nsIAccessible *_retval);

  /* nsIAccessible createHTMLAreaAccessible (in nsIWeakReference aPresShell, in nsIDOMNode aDOMNode, in nsIAccessible aAccParent); */
  nsresult CreateHTMLAreaAccessible(nsIWeakReference aPresShell, nsIDOMNode aDOMNode, nsIAccessible aAccParent, nsIAccessible *_retval);

  /* nsIAccessible createHTMLBlockAccessible (in nsISupports aFrame); */
  nsresult CreateHTMLBlockAccessible(nsISupports aFrame, nsIAccessible *_retval);

  /* nsIAccessible createHTMLButtonAccessible (in nsISupports aFrame); */
  nsresult CreateHTMLButtonAccessible(nsISupports aFrame, nsIAccessible *_retval);

  /* nsIAccessible createHTMLButtonAccessibleXBL (in nsIDOMNode aNode); */
  nsresult CreateHTMLButtonAccessibleXBL(nsIDOMNode aNode, nsIAccessible *_retval);

  /* nsIAccessible createHTMLAccessibleByMarkup (in nsISupports aFrame, in nsIWeakReference aWeakShell, in nsIDOMNode aDOMNode, in AString aRole); */
  nsresult CreateHTMLAccessibleByMarkup(nsISupports aFrame, nsIWeakReference aWeakShell, nsIDOMNode aDOMNode, nsAString * aRole, nsIAccessible *_retval);

  /* nsIAccessible createHTMLLIAccessible (in nsISupports aFrame, in nsISupports aBulletFrame, in AString aBulletText); */
  nsresult CreateHTMLLIAccessible(nsISupports aFrame, nsISupports aBulletFrame, nsAString * aBulletText, nsIAccessible *_retval);

  /* nsIAccessible createHTMLCheckboxAccessible (in nsISupports aFrame); */
  nsresult CreateHTMLCheckboxAccessible(nsISupports aFrame, nsIAccessible *_retval);

  /* nsIAccessible createHTMLCheckboxAccessibleXBL (in nsIDOMNode aNode); */
  nsresult CreateHTMLCheckboxAccessibleXBL(nsIDOMNode aNode, nsIAccessible *_retval);

  /* nsIAccessible createHTMLComboboxAccessible (in nsIDOMNode aNode, in nsISupports aPresShell); */
  nsresult CreateHTMLComboboxAccessible(nsIDOMNode aNode, nsISupports aPresShell, nsIAccessible *_retval);

  /* nsIAccessible createHTMLGenericAccessible (in nsISupports aFrame); */
  nsresult CreateHTMLGenericAccessible(nsISupports aFrame, nsIAccessible *_retval);

  /* nsIAccessible createHTMLGroupboxAccessible (in nsISupports aFrame); */
  nsresult CreateHTMLGroupboxAccessible(nsISupports aFrame, nsIAccessible *_retval);

  /* nsIAccessible createHTMLHRAccessible (in nsISupports aFrame); */
  nsresult CreateHTMLHRAccessible(nsISupports aFrame, nsIAccessible *_retval);

  /* nsIAccessible createHTMLImageAccessible (in nsISupports aFrame); */
  nsresult CreateHTMLImageAccessible(nsISupports aFrame, nsIAccessible *_retval);

  /* nsIAccessible createHTMLLabelAccessible (in nsISupports aFrame); */
  nsresult CreateHTMLLabelAccessible(nsISupports aFrame, nsIAccessible *_retval);

  /* nsIAccessible createHTMLListboxAccessible (in nsIDOMNode aNode, in nsISupports aPresShell); */
  nsresult CreateHTMLListboxAccessible(nsIDOMNode aNode, nsISupports aPresShell, nsIAccessible *_retval);

  /* nsIAccessible createHTMLObjectFrameAccessible (in nsObjectFrame aFrame); */
  nsresult CreateHTMLObjectFrameAccessible(nsObjectFrame aFrame, nsIAccessible *_retval);

  /* nsIAccessible createHTMLRadioButtonAccessible (in nsISupports aFrame); */
  nsresult CreateHTMLRadioButtonAccessible(nsISupports aFrame, nsIAccessible *_retval);

  /* nsIAccessible createHTMLRadioButtonAccessibleXBL (in nsIDOMNode aNode); */
  nsresult CreateHTMLRadioButtonAccessibleXBL(nsIDOMNode aNode, nsIAccessible *_retval);

  /* nsIAccessible createHTMLSelectOptionAccessible (in nsIDOMNode aNode, in nsIAccessible aAccParent, in nsISupports aPresShell); */
  nsresult CreateHTMLSelectOptionAccessible(nsIDOMNode aNode, nsIAccessible aAccParent, nsISupports aPresShell, nsIAccessible *_retval);

  /* nsIAccessible createHTMLTableAccessible (in nsISupports aFrame); */
  nsresult CreateHTMLTableAccessible(nsISupports aFrame, nsIAccessible *_retval);

  /* nsIAccessible createHTMLTableCellAccessible (in nsISupports aFrame); */
  nsresult CreateHTMLTableCellAccessible(nsISupports aFrame, nsIAccessible *_retval);

  /* nsIAccessible createHTMLTableCaptionAccessible (in nsIDOMNode aDOMNode); */
  nsresult CreateHTMLTableCaptionAccessible(nsIDOMNode aDOMNode, nsIAccessible *_retval);

  /* nsIAccessible createHTMLTableHeadAccessible (in nsIDOMNode aDOMNode); */
  nsresult CreateHTMLTableHeadAccessible(nsIDOMNode aDOMNode, nsIAccessible *_retval);

  /* nsIAccessible createHTMLTextAccessible (in nsISupports aFrame); */
  nsresult CreateHTMLTextAccessible(nsISupports aFrame, nsIAccessible *_retval);

  /* nsIAccessible createHTMLTextFieldAccessible (in nsISupports aFrame); */
  nsresult CreateHTMLTextFieldAccessible(nsISupports aFrame, nsIAccessible *_retval);

  /* nsIAccessible createXULButtonAccessible (in nsIDOMNode aNode); */
  nsresult CreateXULButtonAccessible(nsIDOMNode aNode, nsIAccessible *_retval);

  /* nsIAccessible createXULCheckboxAccessible (in nsIDOMNode aNode); */
  nsresult CreateXULCheckboxAccessible(nsIDOMNode aNode, nsIAccessible *_retval);

  /* nsIAccessible createXULColorPickerAccessible (in nsIDOMNode aNode); */
  nsresult CreateXULColorPickerAccessible(nsIDOMNode aNode, nsIAccessible *_retval);

  /* nsIAccessible createXULColorPickerTileAccessible (in nsIDOMNode aNode); */
  nsresult CreateXULColorPickerTileAccessible(nsIDOMNode aNode, nsIAccessible *_retval);

  /* nsIAccessible createXULComboboxAccessible (in nsIDOMNode aNode); */
  nsresult CreateXULComboboxAccessible(nsIDOMNode aNode, nsIAccessible *_retval);

  /* nsIAccessible createXULDropmarkerAccessible (in nsIDOMNode aNode); */
  nsresult CreateXULDropmarkerAccessible(nsIDOMNode aNode, nsIAccessible *_retval);

  /* nsIAccessible createXULGroupboxAccessible (in nsIDOMNode aNode); */
  nsresult CreateXULGroupboxAccessible(nsIDOMNode aNode, nsIAccessible *_retval);

  /* nsIAccessible createXULImageAccessible (in nsIDOMNode aNode); */
  nsresult CreateXULImageAccessible(nsIDOMNode aNode, nsIAccessible *_retval);

  /* nsIAccessible createXULLinkAccessible (in nsIDOMNode aNode); */
  nsresult CreateXULLinkAccessible(nsIDOMNode aNode, nsIAccessible *_retval);

  /* nsIAccessible createXULListboxAccessible (in nsIDOMNode aNode); */
  nsresult CreateXULListboxAccessible(nsIDOMNode aNode, nsIAccessible *_retval);

  /* nsIAccessible createXULListitemAccessible (in nsIDOMNode aNode); */
  nsresult CreateXULListitemAccessible(nsIDOMNode aNode, nsIAccessible *_retval);

  /* nsIAccessible createXULMenubarAccessible (in nsIDOMNode aNode); */
  nsresult CreateXULMenubarAccessible(nsIDOMNode aNode, nsIAccessible *_retval);

  /* nsIAccessible createXULMenuitemAccessible (in nsIDOMNode aNode); */
  nsresult CreateXULMenuitemAccessible(nsIDOMNode aNode, nsIAccessible *_retval);

  /* nsIAccessible createXULMenupopupAccessible (in nsIDOMNode aNode); */
  nsresult CreateXULMenupopupAccessible(nsIDOMNode aNode, nsIAccessible *_retval);

  /* nsIAccessible createXULMenuSeparatorAccessible (in nsIDOMNode aNode); */
  nsresult CreateXULMenuSeparatorAccessible(nsIDOMNode aNode, nsIAccessible *_retval);

  /* nsIAccessible createXULProgressMeterAccessible (in nsIDOMNode aNode); */
  nsresult CreateXULProgressMeterAccessible(nsIDOMNode aNode, nsIAccessible *_retval);

  /* nsIAccessible createXULStatusBarAccessible (in nsIDOMNode aNode); */
  nsresult CreateXULStatusBarAccessible(nsIDOMNode aNode, nsIAccessible *_retval);

  /* nsIAccessible createXULRadioButtonAccessible (in nsIDOMNode aNode); */
  nsresult CreateXULRadioButtonAccessible(nsIDOMNode aNode, nsIAccessible *_retval);

  /* nsIAccessible createXULRadioGroupAccessible (in nsIDOMNode aNode); */
  nsresult CreateXULRadioGroupAccessible(nsIDOMNode aNode, nsIAccessible *_retval);

  /* nsIAccessible createXULSelectOptionAccessible (in nsIDOMNode aNode); */
  nsresult CreateXULSelectOptionAccessible(nsIDOMNode aNode, nsIAccessible *_retval);

  /* nsIAccessible createXULSelectListAccessible (in nsIDOMNode aNode); */
  nsresult CreateXULSelectListAccessible(nsIDOMNode aNode, nsIAccessible *_retval);

  /* nsIAccessible createXULTabAccessible (in nsIDOMNode aNode); */
  nsresult CreateXULTabAccessible(nsIDOMNode aNode, nsIAccessible *_retval);

  /* nsIAccessible createXULTabBoxAccessible (in nsIDOMNode aNode); */
  nsresult CreateXULTabBoxAccessible(nsIDOMNode aNode, nsIAccessible *_retval);

  /* nsIAccessible createXULTabPanelsAccessible (in nsIDOMNode aNode); */
  nsresult CreateXULTabPanelsAccessible(nsIDOMNode aNode, nsIAccessible *_retval);

  /* nsIAccessible createXULTabsAccessible (in nsIDOMNode aNode); */
  nsresult CreateXULTabsAccessible(nsIDOMNode aNode, nsIAccessible *_retval);

  /* nsIAccessible createXULTextAccessible (in nsIDOMNode aNode); */
  nsresult CreateXULTextAccessible(nsIDOMNode aNode, nsIAccessible *_retval);

  /* nsIAccessible createXULTextBoxAccessible (in nsIDOMNode aNode); */
  nsresult CreateXULTextBoxAccessible(nsIDOMNode aNode, nsIAccessible *_retval);

  /* nsIAccessible createXULTreeAccessible (in nsIDOMNode aNode); */
  nsresult CreateXULTreeAccessible(nsIDOMNode aNode, nsIAccessible *_retval);

  /* nsIAccessible createXULTreeColumnsAccessible (in nsIDOMNode aNode); */
  nsresult CreateXULTreeColumnsAccessible(nsIDOMNode aNode, nsIAccessible *_retval);

  /* nsIAccessible createXULTreeColumnitemAccessible (in nsIDOMNode aNode); */
  nsresult CreateXULTreeColumnitemAccessible(nsIDOMNode aNode, nsIAccessible *_retval);

  /* nsIAccessible createXULToolbarAccessible (in nsIDOMNode aNode); */
  nsresult CreateXULToolbarAccessible(nsIDOMNode aNode, nsIAccessible *_retval);

  /* nsIAccessible createXULToolbarSeparatorAccessible (in nsIDOMNode aNode); */
  nsresult CreateXULToolbarSeparatorAccessible(nsIDOMNode aNode, nsIAccessible *_retval);

  /* nsIAccessible createXULTooltipAccessible (in nsIDOMNode aNode); */
  nsresult CreateXULTooltipAccessible(nsIDOMNode aNode, nsIAccessible *_retval);

  /* [noscript] nsIAccessible getAccessible (in nsIDOMNode aNode, in nsIPresShell aPresShell, in nsIWeakReference aWeakShell, inout nsIFrame frameHint, out boolean aIsHidden); */
  nsresult GetAccessible(nsIDOMNode aNode, nsIPresShell aPresShell, nsIWeakReference aWeakShell, nsIFrame *frameHint, PRBool *aIsHidden, nsIAccessible *_retval);

  /**
   * Invalidate the accessibility cache associated with aPresShell, for accessibles
   * that were generated for aContainerContent and it's subtree.
   * The container content node for the change is passed in, rather than the
   * changed presentation for the content node itself.
   * @param aPresShell         The presShell where changes occured
   * @param aChangeContent     The affected DOM content
   * @param aEvent             The event from nsIAccessibleEvent that
   *                           caused the change:
   *                           Must be one of:
   *                           EVENT_REORDER (change),
   *                           EVENT_SHOW (make visible or create) or 
   *                           EVENT_HIDE (destroy or hide)
   */
  /* [noscript] void invalidateSubtreeFor (in nsIPresShell aPresShell, in nsIContent aChangedContent, in PRUint32 aEvent); */
  nsresult InvalidateSubtreeFor(nsIPresShell aPresShell, nsIContent aChangedContent, PRUint32 aEvent);

}

