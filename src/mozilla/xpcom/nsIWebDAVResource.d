/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIWebDAVResource.idl
 */

module mozilla.xpcom.nsIWebDAVResource;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;

public import mozilla.xpcom.nsIURL; /* forward declaration */


/* starting interface:    nsIWebDAVResource */
const char[] NS_IWEBDAVRESOURCE_IID_STR = "9ec5321f-e3ea-4812-a4c7-5366a01b609e";

const nsIID NS_IWEBDAVRESOURCE_IID= 
  {0x9ec5321f, 0xe3ea, 0x4812, 
    [ 0xa4, 0xc7, 0x53, 0x66, 0xa0, 0x1b, 0x60, 0x9e ]};

extern(Windows)
interface nsIWebDAVResource : nsISupports {
  static const char[] IID_STR = NS_IWEBDAVRESOURCE_IID_STR;
  static const nsIID IID = NS_IWEBDAVRESOURCE_IID;

  /* readonly attribute nsIURL resourceURL; */
  nsresult GetResourceURL(nsIURL  *aResourceURL);

}


/* starting interface:    nsIWebDAVResourceWithLock */
const char[] NS_IWEBDAVRESOURCEWITHLOCK_IID_STR = "8956be34-abad-4c1a-88eb-cbc1851547ea";

const nsIID NS_IWEBDAVRESOURCEWITHLOCK_IID= 
  {0x8956be34, 0xabad, 0x4c1a, 
    [ 0x88, 0xeb, 0xcb, 0xc1, 0x85, 0x15, 0x47, 0xea ]};

extern(Windows)
interface nsIWebDAVResourceWithLock : nsIWebDAVResource {
  static const char[] IID_STR = NS_IWEBDAVRESOURCEWITHLOCK_IID_STR;
  static const nsIID IID = NS_IWEBDAVRESOURCEWITHLOCK_IID;

  /* readonly attribute AUTF8String lockToken; */
  nsresult GetLockToken(nsACString * aLockToken);

}

