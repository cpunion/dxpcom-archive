/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsISerializable.idl
 */

module mozilla.xpcom.nsISerializable;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;

public import mozilla.xpcom.nsIObjectInputStream; /* forward declaration */

public import mozilla.xpcom.nsIObjectOutputStream; /* forward declaration */


/* starting interface:    nsISerializable */
const char[] NS_ISERIALIZABLE_IID_STR = "91cca981-c26d-44a8-bebe-d9ed4891503a";

const nsIID NS_ISERIALIZABLE_IID= 
  {0x91cca981, 0xc26d, 0x44a8, 
    [ 0xbe, 0xbe, 0xd9, 0xed, 0x48, 0x91, 0x50, 0x3a ]};

extern(Windows)
interface nsISerializable : nsISupports {
  static const char[] IID_STR = NS_ISERIALIZABLE_IID_STR;
  static const nsIID IID = NS_ISERIALIZABLE_IID;

  /**
     * Initialize the object implementing nsISerializable, which must have
     * been freshly constructed via CreateInstance.  All data members that
     * can't be set to default values must have been serialized by write,
     * and should be read from aInputStream in the same order by this method.
     */
  /* void read (in nsIObjectInputStream aInputStream); */
  nsresult Read(nsIObjectInputStream aInputStream);

  /**
     * Serialize the object implementing nsISerializable to aOutputStream, by
     * writing each data member that must be recovered later to reconstitute
     * a working replica of this object, in a canonical member and byte order,
     * to aOutputStream.
     *
     * NB: a class that implements nsISerializable *must* also implement
     * nsIClassInfo, in particular nsIClassInfo::GetClassID.
     */
  /* void write (in nsIObjectOutputStream aOutputStream); */
  nsresult Write(nsIObjectOutputStream aOutputStream);

}

