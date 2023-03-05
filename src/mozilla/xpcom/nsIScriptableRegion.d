/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIScriptableRegion.idl
 */

module mozilla.xpcom.nsIScriptableRegion;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;


/* starting interface:    nsIScriptableRegion */
const char[] NS_ISCRIPTABLEREGION_IID_STR = "82d8f400-5bde-11d3-b033-b27a62766bbc";

const nsIID NS_ISCRIPTABLEREGION_IID= 
  {0x82d8f400, 0x5bde, 0x11d3, 
    [ 0xb0, 0x33, 0xb2, 0x7a, 0x62, 0x76, 0x6b, 0xbc ]};

extern(Windows)
interface nsIScriptableRegion : nsISupports {
  static const char[] IID_STR = NS_ISCRIPTABLEREGION_IID_STR;
  static const nsIID IID = NS_ISCRIPTABLEREGION_IID;

  /* void init (); */
  nsresult Init();

  /**
  * copy operator equivalent that takes another region
  *
  * @param      region to copy
  * @return     void
  *
  **/
  /* void setToRegion (in nsIScriptableRegion aRegion); */
  nsresult SetToRegion(nsIScriptableRegion aRegion);

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
  nsresult SetToRect(PRInt32 aX, PRInt32 aY, PRInt32 aWidth, PRInt32 aHeight);

  /**
  * destructively intersect another region with this one
  *
  * @param      region to intersect
  * @return     void
  *
  **/
  /* void intersectRegion (in nsIScriptableRegion aRegion); */
  nsresult IntersectRegion(nsIScriptableRegion aRegion);

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
  nsresult IntersectRect(PRInt32 aX, PRInt32 aY, PRInt32 aWidth, PRInt32 aHeight);

  /**
  * destructively union another region with this one
  *
  * @param      region to union
  * @return     void
  *
  **/
  /* void unionRegion (in nsIScriptableRegion aRegion); */
  nsresult UnionRegion(nsIScriptableRegion aRegion);

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
  nsresult UnionRect(PRInt32 aX, PRInt32 aY, PRInt32 aWidth, PRInt32 aHeight);

  /**
  * destructively subtract another region with this one
  *
  * @param      region to subtract
  * @return     void
  *
  **/
  /* void subtractRegion (in nsIScriptableRegion aRegion); */
  nsresult SubtractRegion(nsIScriptableRegion aRegion);

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
  nsresult SubtractRect(PRInt32 aX, PRInt32 aY, PRInt32 aWidth, PRInt32 aHeight);

  /**
  * is this region empty? i.e. does it contain any pixels
  *
  * @param      none
  * @return     returns whether the region is empty
  *
  **/
  /* boolean isEmpty (); */
  nsresult IsEmpty(PRBool *_retval);

  /**
  * == operator equivalent i.e. do the regions contain exactly
  * the same pixels
  *
  * @param      region to compare
  * @return     whether the regions are identical
  *
  **/
  /* boolean isEqualRegion (in nsIScriptableRegion aRegion); */
  nsresult IsEqualRegion(nsIScriptableRegion aRegion, PRBool *_retval);

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
  nsresult GetBoundingBox(PRInt32 *aX, PRInt32 *aY, PRInt32 *aWidth, PRInt32 *aHeight);

  /**
  * offsets the region in x and y
  *
  * @param  xoffset  pixel offset in x
  * @param  yoffset  pixel offset in y
  * @return          void
  *
  **/
  /* void offset (in long aXOffset, in long aYOffset); */
  nsresult Offset(PRInt32 aXOffset, PRInt32 aYOffset);

  /**
  * does the region intersect the rectangle?
  *
  * @param      rect to check for containment
  * @return     true if the region intersects the rect
  *
  **/
  /* boolean containsRect (in long aX, in long aY, in long aWidth, in long aHeight); */
  nsresult ContainsRect(PRInt32 aX, PRInt32 aY, PRInt32 aWidth, PRInt32 aHeight, PRBool *_retval);

  /* [noscript] readonly attribute nsIRegion region; */
  nsresult GetRegion(nsIRegion * *aRegion);

}

