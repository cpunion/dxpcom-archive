/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsISVGRendererRegion.idl
 */

module mozilla.xpcom.nsISVGRendererRegion;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;

public import mozilla.xpcom.nsISVGRectangleSink; /* forward declaration */


/* starting interface:    nsISVGRendererRegion */
const char[] NS_ISVGRENDERERREGION_IID_STR = "9356e1c6-66e6-49a0-8c67-7e910270ed1e";

const nsIID NS_ISVGRENDERERREGION_IID= 
  {0x9356e1c6, 0x66e6, 0x49a0, 
    [ 0x8c, 0x67, 0x7e, 0x91, 0x02, 0x70, 0xed, 0x1e ]};

/**
 * \addtogroup renderer_interfaces Rendering Engine Interfaces
 * @{
 */
/**
 * One of a number of interfaces (all starting with nsISVGRenderer*)
 * to be implemented by an SVG rendering engine. See nsISVGRenderer
 * for more details.
 *
 * This interface abstracts a rendering engine-native region object.
 */
extern(Windows)
interface nsISVGRendererRegion : nsISupports {
  static const char[] IID_STR = NS_ISVGRENDERERREGION_IID_STR;
  static const nsIID IID = NS_ISVGRENDERERREGION_IID;

  /**
   * Return union of this region with another region.
   *
   * @param other Region to combine with.
   * @return Union region.
   */
  /* nsISVGRendererRegion combine (in nsISVGRendererRegion other); */
  nsresult Combine(nsISVGRendererRegion other, nsISVGRendererRegion *_retval);

  /**
   * Write a sequence of rectangles approximating this region to the
   * sink object. The approximation can be crude but should fully
   * contain the actual region area.
   *
   * @param sink Rectangle sink to write to.
   */
  /* void getRectangleScans (in nsISVGRectangleSink sink); */
  nsresult GetRectangleScans(nsISVGRectangleSink sink);

}

