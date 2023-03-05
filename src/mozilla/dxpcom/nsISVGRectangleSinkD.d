/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsISVGRectangleSink.idl
 */

module mozilla.dxpcom.nsISVGRectangleSinkD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsISVGRectangleSink;


public import mozilla.dxpcom.nsISVGRectangleSinkD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;


/* starting wrapper class:    nsISVGRectangleSink */
/**
 * \addtogroup rendering_backend_interfaces Rendering Backend Interfaces
 * @{
 */
/**
 * Interface handed to nsISVGRendererRegion::getRectangleScans() to
 * obtain an approximation of the region with rectangles.
 */
class nsISVGRectangleSinkD : public nsISupportsD {

  static const nsIID IID = NS_ISVGRECTANGLESINK_IID;


  alias nsISVGRectangleSink InnerType;

  this(nsISVGRectangleSink intr){
    super(intr);
    this.inner = intr;
  }

  nsISVGRectangleSink opCast() {
    return inner;
  }

  void opAssign(nsISVGRectangleSink value) {
    inner = value;
  }

  /* void sinkRectangle (in float x, in float y, in float width, in float height); */
  void SinkRectangle(float x, float y, float width, float height){
    nsresult __result = inner.SinkRectangle(x, y, width, height);
    CheckException(__result);
  }

private:
  nsISVGRectangleSink inner;

}

