/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsPIAccessibleDocument.idl
 */

module mozilla.xpcom.nsPIAccessibleDocument;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;

public import mozilla.xpcom.nsIAccessNode; /* forward declaration */


/* starting interface:    nsPIAccessibleDocument */
const char[] NS_PIACCESSIBLEDOCUMENT_IID_STR = "eae56f75-ee68-4120-b113-10f21b75509e";

const nsIID NS_PIACCESSIBLEDOCUMENT_IID= 
  {0xeae56f75, 0xee68, 0x4120, 
    [ 0xb1, 0x13, 0x10, 0xf2, 0x1b, 0x75, 0x50, 0x9e ]};

extern(Windows)
interface nsPIAccessibleDocument : nsISupports {
  static const char[] IID_STR = NS_PIACCESSIBLEDOCUMENT_IID_STR;
  static const nsIID IID = NS_PIACCESSIBLEDOCUMENT_IID;

  /**
    * Find the accessible object in the accessibility cache that 
    * corresponds to aStartNode or the first ancestor of aStartNode 
    * that has an accessible object associated with it.
    * Clear that accessible object's parent's cache of accessible children and
    * and remove the accessible object and any decendents from the accessible cache.
    * New accessible objects will be created and cached again on demand.
    * @param aChangeContent     The child that is changing
    * @param aEvent             The event from nsIAccessibleEvent that caused the change:
    *                           Must be one of: EVENT_REORDER (change),
    *                                           EVENT_SHOW (make visible or create) or 
    *                                           EVENT_HIDE (destroy or hide)
    */
  /* void invalidateCacheSubtree (in nsIContent aChangeContent, in PRUint32 aChangeEvent); */
  nsresult InvalidateCacheSubtree(nsIContent aChangeContent, PRUint32 aChangeEvent);

  /* void cacheAccessNode (in voidPtr aUniqueID, in nsIAccessNode aAccessNode); */
  nsresult CacheAccessNode(void * aUniqueID, nsIAccessNode aAccessNode);

  /* void destroy (); */
  nsresult Destroy();

  /* void flushPendingEvents (); */
  nsresult FlushPendingEvents();

  /* void fireDocLoadingEvent (in boolean isFinished); */
  nsresult FireDocLoadingEvent(PRBool isFinished);

  /* void fireAnchorJumpEvent (); */
  nsresult FireAnchorJumpEvent();

}

