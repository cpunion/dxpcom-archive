/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsISVGRectangleSink.idl
 */

module mozilla.xpcom.nsISVGRectangleSink;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;


/* starting interface:    nsISVGRectangleSink */
const char[] NS_ISVGRECTANGLESINK_IID_STR = "0340df1d-1096-445f-bbf9-e1d1e5a10827";

const nsIID NS_ISVGRECTANGLESINK_IID= 
  {0x0340df1d, 0x1096, 0x445f, 
    [ 0xbb, 0xf9, 0xe1, 0xd1, 0xe5, 0xa1, 0x08, 0x27 ]};

/**
 * \addtogroup rendering_backend_interfaces Rendering Backend Interfaces
 * @{
 */
/**
 * Interface handed to nsISVGRendererRegion::getRectangleScans() to
 * obtain an approximation of the region with rectangles.
 */
extern(Windows)
interface nsISVGRectangleSink : nsISupports {
  static const char[] IID_STR = NS_ISVGRECTANGLESINK_IID_STR;
  static const nsIID IID = NS_ISVGRECTANGLESINK_IID;

  /* void sinkRectangle (in float x, in float y, in float width, in float height); */
  nsresult SinkRectangle(float x, float y, float width, float height);

}

