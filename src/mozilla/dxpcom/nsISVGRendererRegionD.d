/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsISVGRendererRegion.idl
 */

module mozilla.dxpcom.nsISVGRendererRegionD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsISVGRendererRegion;


public import mozilla.dxpcom.nsISVGRendererRegionD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;

public import mozilla.xpcom.nsISVGRectangleSink;

public import mozilla.dxpcom.nsISVGRectangleSinkD;


/* starting wrapper class:    nsISVGRendererRegion */
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
class nsISVGRendererRegionD : public nsISupportsD {

  static const nsIID IID = NS_ISVGRENDERERREGION_IID;


  alias nsISVGRendererRegion InnerType;

  this(nsISVGRendererRegion intr){
    super(intr);
    this.inner = intr;
  }

  nsISVGRendererRegion opCast() {
    return inner;
  }

  void opAssign(nsISVGRendererRegion value) {
    inner = value;
  }

  /**
   * Return union of this region with another region.
   *
   * @param other Region to combine with.
   * @return Union region.
   */
  /* nsISVGRendererRegion combine (in nsISVGRendererRegion other); */
  nsISVGRendererRegionD  Combine(nsISVGRendererRegionD other){
    nsISVGRendererRegion _retval;
    nsresult __result = inner.Combine(other ? cast(nsISVGRendererRegion)other : null, &_retval);
    CheckException(__result);
    return new nsISVGRendererRegionD(_retval);
  }

  /**
   * Write a sequence of rectangles approximating this region to the
   * sink object. The approximation can be crude but should fully
   * contain the actual region area.
   *
   * @param sink Rectangle sink to write to.
   */
  /* void getRectangleScans (in nsISVGRectangleSink sink); */
  void GetRectangleScans(nsISVGRectangleSinkD sink){
    nsresult __result = inner.GetRectangleScans(sink ? cast(nsISVGRectangleSink)sink : null);
    CheckException(__result);
  }

private:
  nsISVGRendererRegion inner;

}

