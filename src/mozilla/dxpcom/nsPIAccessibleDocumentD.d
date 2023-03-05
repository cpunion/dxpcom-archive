/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsPIAccessibleDocument.idl
 */

module mozilla.dxpcom.nsPIAccessibleDocumentD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsPIAccessibleDocument;


public import mozilla.dxpcom.nsPIAccessibleDocumentD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;

public import mozilla.xpcom.nsIAccessNode;

public import mozilla.dxpcom.nsIAccessNodeD;


/* starting wrapper class:    nsPIAccessibleDocument */
class nsPIAccessibleDocumentD : public nsISupportsD {

  static const nsIID IID = NS_PIACCESSIBLEDOCUMENT_IID;


  alias nsPIAccessibleDocument InnerType;

  this(nsPIAccessibleDocument intr){
    super(intr);
    this.inner = intr;
  }

  nsPIAccessibleDocument opCast() {
    return inner;
  }

  void opAssign(nsPIAccessibleDocument value) {
    inner = value;
  }

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
  void InvalidateCacheSubtree(nsIContentD aChangeContent, PRUint32 aChangeEvent){
    nsresult __result = inner.InvalidateCacheSubtree(aChangeContent ? cast(nsIContent)aChangeContent : null, aChangeEvent);
    CheckException(__result);
  }

  /* void cacheAccessNode (in voidPtr aUniqueID, in nsIAccessNode aAccessNode); */
  void CacheAccessNode(void * aUniqueID, nsIAccessNodeD aAccessNode){
    nsresult __result = inner.CacheAccessNode(aUniqueID, aAccessNode ? cast(nsIAccessNode)aAccessNode : null);
    CheckException(__result);
  }

  /* void destroy (); */
  void Destroy(){
    nsresult __result = inner.Destroy();
    CheckException(__result);
  }

  /* void flushPendingEvents (); */
  void FlushPendingEvents(){
    nsresult __result = inner.FlushPendingEvents();
    CheckException(__result);
  }

  /* void fireDocLoadingEvent (in boolean isFinished); */
  void FireDocLoadingEvent(PRBool isFinished){
    nsresult __result = inner.FireDocLoadingEvent(isFinished);
    CheckException(__result);
  }

  /* void fireAnchorJumpEvent (); */
  void FireAnchorJumpEvent(){
    nsresult __result = inner.FireAnchorJumpEvent();
    CheckException(__result);
  }

private:
  nsPIAccessibleDocument inner;

}

