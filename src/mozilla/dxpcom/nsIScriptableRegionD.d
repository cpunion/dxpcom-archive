/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIScriptableRegion.idl
 */

module mozilla.dxpcom.nsIScriptableRegionD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIScriptableRegion;


public import mozilla.dxpcom.nsIScriptableRegionD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;


/* starting wrapper class:    nsIScriptableRegion */
class nsIScriptableRegionD : public nsISupportsD {

  static const nsIID IID = NS_ISCRIPTABLEREGION_IID;


  alias nsIScriptableRegion InnerType;

  this(nsIScriptableRegion intr){
    super(intr);
    this.inner = intr;
  }

  nsIScriptableRegion opCast() {
    return inner;
  }

  void opAssign(nsIScriptableRegion value) {
    inner = value;
  }

  /* void init (); */
  void Init(){
    nsresult __result = inner.Init();
    CheckException(__result);
  }

  /**
  * copy operator equivalent that takes another region
  *
  * @param      region to copy
  * @return     void
  *
  **/
  /* void setToRegion (in nsIScriptableRegion aRegion); */
  void SetToRegion(nsIScriptableRegionD aRegion){
    nsresult __result = inner.SetToRegion(aRegion ? cast(nsIScriptableRegion)aRegion : null);
    CheckException(__result);
  }

  /**
  * copy operator equivalent that takes a rect
  *
  * @param      aX xoffset of rect to set region to
  * @param      aY yoffset of rect to set region to
  * @param      aWidth width of rect to set region to
  * @param      aHeight height of rect to set region to
  * @return     void
  *
  **/
  /* void setToRect (in long aX, in long aY, in long aWidth, in long aHeight); */
  void SetToRect(PRInt32 aX, PRInt32 aY, PRInt32 aWidth, PRInt32 aHeight){
    nsresult __result = inner.SetToRect(aX, aY, aWidth, aHeight);
    CheckException(__result);
  }

  /**
  * destructively intersect another region with this one
  *
  * @param      region to intersect
  * @return     void
  *
  **/
  /* void intersectRegion (in nsIScriptableRegion aRegion); */
  void IntersectRegion(nsIScriptableRegionD aRegion){
    nsresult __result = inner.IntersectRegion(aRegion ? cast(nsIScriptableRegion)aRegion : null);
    CheckException(__result);
  }

  /**
  * destructively intersect a rect with this region
  *
  * @param      aX xoffset of rect to intersect with region
  * @param      aY yoffset of rect to intersect with region
  * @param      aWidth width of rect to intersect with region
  * @param      aHeight height of rect to intersect with region
  * @return     void
  *
  **/
  /* void intersectRect (in long aX, in long aY, in long aWidth, in long aHeight); */
  void IntersectRect(PRInt32 aX, PRInt32 aY, PRInt32 aWidth, PRInt32 aHeight){
    nsresult __result = inner.IntersectRect(aX, aY, aWidth, aHeight);
    CheckException(__result);
  }

  /**
  * destructively union another region with this one
  *
  * @param      region to union
  * @return     void
  *
  **/
  /* void unionRegion (in nsIScriptableRegion aRegion); */
  void UnionRegion(nsIScriptableRegionD aRegion){
    nsresult __result = inner.UnionRegion(aRegion ? cast(nsIScriptableRegion)aRegion : null);
    CheckException(__result);
  }

  /**
  * destructively union a rect with this region
  *
  * @param      aX xoffset of rect to union with region
  * @param      aY yoffset of rect to union with region
  * @param      aWidth width of rect to union with region
  * @param      aHeight height of rect to union with region
  * @return     void
  *
  **/
  /* void unionRect (in long aX, in long aY, in long aWidth, in long aHeight); */
  void UnionRect(PRInt32 aX, PRInt32 aY, PRInt32 aWidth, PRInt32 aHeight){
    nsresult __result = inner.UnionRect(aX, aY, aWidth, aHeight);
    CheckException(__result);
  }

  /**
  * destructively subtract another region with this one
  *
  * @param      region to subtract
  * @return     void
  *
  **/
  /* void subtractRegion (in nsIScriptableRegion aRegion); */
  void SubtractRegion(nsIScriptableRegionD aRegion){
    nsresult __result = inner.SubtractRegion(aRegion ? cast(nsIScriptableRegion)aRegion : null);
    CheckException(__result);
  }

  /**
  * destructively subtract a rect from this region
  *
  * @param      aX xoffset of rect to subtract with region
  * @param      aY yoffset of rect to subtract with region
  * @param      aWidth width of rect to subtract with region
  * @param      aHeight height of rect to subtract with region
  * @return     void
  *
  **/
  /* void subtractRect (in long aX, in long aY, in long aWidth, in long aHeight); */
  void SubtractRect(PRInt32 aX, PRInt32 aY, PRInt32 aWidth, PRInt32 aHeight){
    nsresult __result = inner.SubtractRect(aX, aY, aWidth, aHeight);
    CheckException(__result);
  }

  /**
  * is this region empty? i.e. does it contain any pixels
  *
  * @param      none
  * @return     returns whether the region is empty
  *
  **/
  /* boolean isEmpty (); */
  PRBool IsEmpty(){
    PRBool _retval;
    nsresult __result = inner.IsEmpty(&_retval);
    CheckException(__result);
    return _retval;
  }

  /**
  * == operator equivalent i.e. do the regions contain exactly
  * the same pixels
  *
  * @param      region to compare
  * @return     whether the regions are identical
  *
  **/
  /* boolean isEqualRegion (in nsIScriptableRegion aRegion); */
  PRBool IsEqualRegion(nsIScriptableRegionD aRegion){
    PRBool _retval;
    nsresult __result = inner.IsEqualRegion(aRegion ? cast(nsIScriptableRegion)aRegion : null, &_retval);
    CheckException(__result);
    return _retval;
  }

  /**
  * returns the bounding box of the region i.e. the smallest
  * rectangle that completely contains the region.        
  *
  * @param      aX out parameter for xoffset of bounding rect for region
  * @param      aY out parameter for yoffset of bounding rect for region
  * @param      aWidth out parameter for width of bounding rect for region
  * @param      aHeight out parameter for height of bounding rect for region
  * @return     void
  *
  **/
  /* void getBoundingBox (out long aX, out long aY, out long aWidth, out long aHeight); */
  void GetBoundingBox(out PRInt32 aX, out PRInt32 aY, out PRInt32 aWidth, out PRInt32 aHeight){
    nsresult __result = inner.GetBoundingBox(&aX, &aY, &aWidth, &aHeight);
    CheckException(__result);
  }

  /**
  * offsets the region in x and y
  *
  * @param  xoffset  pixel offset in x
  * @param  yoffset  pixel offset in y
  * @return          void
  *
  **/
  /* void offset (in long aXOffset, in long aYOffset); */
  void Offset(PRInt32 aXOffset, PRInt32 aYOffset){
    nsresult __result = inner.Offset(aXOffset, aYOffset);
    CheckException(__result);
  }

  /**
  * does the region intersect the rectangle?
  *
  * @param      rect to check for containment
  * @return     true if the region intersects the rect
  *
  **/
  /* boolean containsRect (in long aX, in long aY, in long aWidth, in long aHeight); */
  PRBool ContainsRect(PRInt32 aX, PRInt32 aY, PRInt32 aWidth, PRInt32 aHeight){
    PRBool _retval;
    nsresult __result = inner.ContainsRect(aX, aY, aWidth, aHeight, &_retval);
    CheckException(__result);
    return _retval;
  }

  /* [noscript] readonly attribute nsIRegion region; */
  nsIRegion * Region(){
    nsIRegion * value;
    nsresult __result = inner.GetRegion(&value);
    CheckException(__result);
    return value;
  }

private:
  nsIScriptableRegion inner;

}

