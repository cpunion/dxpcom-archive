/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIFile.idl
 */

module mozilla.dxpcom.nsIFileD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIFile;


public import mozilla.dxpcom.nsIFileD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;

public import mozilla.xpcom.nsISimpleEnumerator;

public import mozilla.dxpcom.nsISimpleEnumeratorD;


/* starting wrapper class:    nsIFile */
/**
 * This is the only correct cross-platform way to specify a file.
 * Strings are not such a way. If you grew up on windows or unix, you
 * may think they are.  Welcome to reality.
 *
 * All methods with string parameters have two forms.  The preferred
 * form operates on UCS-2 encoded characters strings.  An alternate
 * form operates on characters strings encoded in the "native" charset.
 *
 * A string containing characters encoded in the native charset cannot
 * be safely passed to javascript via xpconnect.  Therefore, the "native
 * methods" are not scriptable. 
 *
 * @status FROZEN
 */
class nsIFileD : public nsISupportsD {

  static const nsIID IID = NS_IFILE_IID;


  alias nsIFile InnerType;

  this(nsIFile intr){
    super(intr);
    this.inner = intr;
  }

  nsIFile opCast() {
    return inner;
  }

  void opAssign(nsIFile value) {
    inner = value;
  }

  /**
     *  Create Types
     *
     *  NORMAL_FILE_TYPE - A normal file.
     *  DIRECTORY_TYPE   - A directory/folder.
     */
  enum { NORMAL_FILE_TYPE = 0U }

  enum { DIRECTORY_TYPE = 1U }

  /**
     *  append[Native]
     *
     *  This function is used for constructing a descendent of the
     *  current nsIFile.
     *
     *   @param node
     *       A string which is intended to be a child node of the nsIFile.
     *       For the |appendNative| method, the node must be in the native
     *       filesystem charset.
     */
  /* void append (in AString node); */
  void Append(wchar[] node){
    scope auto _node = new AString(node);
    nsresult __result = inner.Append(cast(nsAString*)_node);
    CheckException(__result);
  }

  /* [noscript] void appendNative (in ACString node); */
  void AppendNative(char[] node){
    scope auto _node = new ACString(node);
    nsresult __result = inner.AppendNative(cast(nsACString*)_node);
    CheckException(__result);
  }

  /**
     *  Normalize the pathName (e.g. removing .. and . components on Unix).
     */
  /* void normalize (); */
  void Normalize(){
    nsresult __result = inner.Normalize();
    CheckException(__result);
  }

  /**
     *  create
     *
     *  This function will create a new file or directory in the
     *  file system. Any nodes that have not been created or
     *  resolved, will be.  If the file or directory already
     *  exists create() will return NS_ERROR_FILE_ALREADY_EXISTS.
     *
     *   @param type
     *       This specifies the type of file system object
     *       to be made.  The only two types at this time
     *       are file and directory which are defined above.
     *       If the type is unrecongnized, we will return an
     *       error (NS_ERROR_FILE_UNKNOWN_TYPE).
     *
     *   @param permissions
     *       The unix style octal permissions.  This may
     *       be ignored on systems that do not need to do
     *       permissions.
     */
  /* void create (in unsigned long type, in unsigned long permissions); */
  void Create(PRUint32 type, PRUint32 permissions){
    nsresult __result = inner.Create(type, permissions);
    CheckException(__result);
  }

  /**
     *  Accessor to the leaf name of the file itself.      
     *  For the |nativeLeafName| method, the nativeLeafName must 
     *  be in the native filesystem charset.
     */
  /* attribute AString leafName; */
  wchar[] LeafName(){
    scope auto value = new AString();
    nsresult __result = inner.GetLeafName(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }
  void LeafName(wchar[] aLeafName){
    scope auto value = new AString(aLeafName);
    nsresult __result = inner.SetLeafName(cast(nsAString*)value);
    CheckException(__result);
  }

  /* [noscript] attribute ACString nativeLeafName; */
  char[] NativeLeafName(){
    scope auto value = new ACString();
    nsresult __result = inner.GetNativeLeafName(cast(nsACString*)value);
    CheckException(__result);
    return value.GetString();
  }
  void NativeLeafName(char[] aNativeLeafName){
    scope auto value = new ACString(aNativeLeafName);
    nsresult __result = inner.SetNativeLeafName(cast(nsACString*)value);
    CheckException(__result);
  }

  /**
     *  copyTo[Native]
     *
     *  This will copy this file to the specified newParentDir.
     *  If a newName is specified, the file will be renamed.
     *  If 'this' is not created we will return an error
     *  (NS_ERROR_FILE_TARGET_DOES_NOT_EXIST).
     *
     *  copyTo may fail if the file already exists in the destination 
     *  directory.
     *
     *  copyTo will NOT resolve aliases/shortcuts during the copy.
     *
     *   @param newParentDir
     *       This param is the destination directory. If the
     *       newParentDir is null, copyTo() will use the parent
     *       directory of this file. If the newParentDir is not
     *       empty and is not a directory, an error will be
     *       returned (NS_ERROR_FILE_DESTINATION_NOT_DIR). For the 
     *       |CopyToNative| method, the newName must be in the 
     *       native filesystem charset.
     *
     *   @param newName
     *       This param allows you to specify a new name for
     *       the file to be copied. This param may be empty, in
     *       which case the current leaf name will be used.
     */
  /* void copyTo (in nsIFile newParentDir, in AString newName); */
  void CopyTo(nsIFileD newParentDir, wchar[] newName){
    scope auto _newName = new AString(newName);
    nsresult __result = inner.CopyTo(newParentDir ? cast(nsIFile)newParentDir : null, cast(nsAString*)_newName);
    CheckException(__result);
  }

  /* [noscript] void CopyToNative (in nsIFile newParentDir, in ACString newName); */
  void CopyToNative(nsIFileD newParentDir, char[] newName){
    scope auto _newName = new ACString(newName);
    nsresult __result = inner.CopyToNative(newParentDir ? cast(nsIFile)newParentDir : null, cast(nsACString*)_newName);
    CheckException(__result);
  }

  /**
     *  copyToFollowingLinks[Native]
     *
     *  This function is identical to copyTo with the exception that,
     *  as the name implies, it follows symbolic links.  The XP_UNIX
     *  implementation always follow symbolic links when copying.  For 
     *  the |CopyToFollowingLinks| method, the newName must be in the 
     *  native filesystem charset.
     */
  /* void copyToFollowingLinks (in nsIFile newParentDir, in AString newName); */
  void CopyToFollowingLinks(nsIFileD newParentDir, wchar[] newName){
    scope auto _newName = new AString(newName);
    nsresult __result = inner.CopyToFollowingLinks(newParentDir ? cast(nsIFile)newParentDir : null, cast(nsAString*)_newName);
    CheckException(__result);
  }

  /* [noscript] void copyToFollowingLinksNative (in nsIFile newParentDir, in ACString newName); */
  void CopyToFollowingLinksNative(nsIFileD newParentDir, char[] newName){
    scope auto _newName = new ACString(newName);
    nsresult __result = inner.CopyToFollowingLinksNative(newParentDir ? cast(nsIFile)newParentDir : null, cast(nsACString*)_newName);
    CheckException(__result);
  }

  /**
     *  moveTo[Native]
     *
     *  A method to move this file or directory to newParentDir.
     *  If a newName is specified, the file or directory will be renamed.
     *  If 'this' is not created we will return an error
     *  (NS_ERROR_FILE_TARGET_DOES_NOT_EXIST).
     *  If 'this' is a file, and the destination file already exists, moveTo
     *  will replace the old file.
     *
     *  moveTo will NOT resolve aliases/shortcuts during the copy.
     *  moveTo will do the right thing and allow copies across volumes.
     *  moveTo will return an error (NS_ERROR_FILE_DIR_NOT_EMPTY) if 'this' is
     *  a directory and the destination directory is not empty.
     *  moveTo will return an error (NS_ERROR_FILE_ACCESS_DENIED) if 'this' is
     *  a directory and the destination directory is not writable.
     *
     *   @param newParentDir
     *       This param is the destination directory. If the
     *       newParentDir is empty, moveTo() will rename the file
     *       within its current directory. If the newParentDir is
     *       not empty and does not name a directory, an error will
     *       be returned (NS_ERROR_FILE_DESTINATION_NOT_DIR).  For 
     *       the |moveToNative| method, the newName must be in the 
     *       native filesystem charset.
     *
     *   @param newName
     *       This param allows you to specify a new name for
     *       the file to be moved. This param may be empty, in
     *       which case the current leaf name will be used.
     */
  /* void moveTo (in nsIFile newParentDir, in AString newName); */
  void MoveTo(nsIFileD newParentDir, wchar[] newName){
    scope auto _newName = new AString(newName);
    nsresult __result = inner.MoveTo(newParentDir ? cast(nsIFile)newParentDir : null, cast(nsAString*)_newName);
    CheckException(__result);
  }

  /* [noscript] void moveToNative (in nsIFile newParentDir, in ACString newName); */
  void MoveToNative(nsIFileD newParentDir, char[] newName){
    scope auto _newName = new ACString(newName);
    nsresult __result = inner.MoveToNative(newParentDir ? cast(nsIFile)newParentDir : null, cast(nsACString*)_newName);
    CheckException(__result);
  }

  /**
     *  This will try to delete this file.  The 'recursive' flag
     *  must be PR_TRUE to delete directories which are not empty.
     *
     *  This will not resolve any symlinks.
     */
  /* void remove (in boolean recursive); */
  void Remove(PRBool recursive){
    nsresult __result = inner.Remove(recursive);
    CheckException(__result);
  }

  /**
     *  Attributes of nsIFile.
     */
  /* attribute unsigned long permissions; */
  PRUint32 Permissions(){
    PRUint32 value;
    nsresult __result = inner.GetPermissions(&value);
    CheckException(__result);
    return value;
  }
  void Permissions(PRUint32 aPermissions){
    nsresult __result = inner.SetPermissions(aPermissions);
    CheckException(__result);
  }

  /* attribute unsigned long permissionsOfLink; */
  PRUint32 PermissionsOfLink(){
    PRUint32 value;
    nsresult __result = inner.GetPermissionsOfLink(&value);
    CheckException(__result);
    return value;
  }
  void PermissionsOfLink(PRUint32 aPermissionsOfLink){
    nsresult __result = inner.SetPermissionsOfLink(aPermissionsOfLink);
    CheckException(__result);
  }

  /**
     *  File Times are to be in milliseconds from
     *  midnight (00:00:00), January 1, 1970 Greenwich Mean
     *  Time (GMT).
     */
  /* attribute PRInt64 lastModifiedTime; */
  PRInt64 LastModifiedTime(){
    PRInt64 value;
    nsresult __result = inner.GetLastModifiedTime(&value);
    CheckException(__result);
    return value;
  }
  void LastModifiedTime(PRInt64 aLastModifiedTime){
    PRInt64 value;
    nsresult __result = inner.SetLastModifiedTime(value);
    CheckException(__result);
  }

  /* attribute PRInt64 lastModifiedTimeOfLink; */
  PRInt64 LastModifiedTimeOfLink(){
    PRInt64 value;
    nsresult __result = inner.GetLastModifiedTimeOfLink(&value);
    CheckException(__result);
    return value;
  }
  void LastModifiedTimeOfLink(PRInt64 aLastModifiedTimeOfLink){
    PRInt64 value;
    nsresult __result = inner.SetLastModifiedTimeOfLink(value);
    CheckException(__result);
  }

  /**
     *  WARNING!  On the Mac, getting/setting the file size with nsIFile
     *  only deals with the size of the data fork.  If you need to
     *  know the size of the combined data and resource forks use the
     *  GetFileSizeWithResFork() method defined on nsILocalFileMac.
     */
  /* attribute PRInt64 fileSize; */
  PRInt64 FileSize(){
    PRInt64 value;
    nsresult __result = inner.GetFileSize(&value);
    CheckException(__result);
    return value;
  }
  void FileSize(PRInt64 aFileSize){
    PRInt64 value;
    nsresult __result = inner.SetFileSize(value);
    CheckException(__result);
  }

  /* readonly attribute PRInt64 fileSizeOfLink; */
  PRInt64 FileSizeOfLink(){
    PRInt64 value;
    nsresult __result = inner.GetFileSizeOfLink(&value);
    CheckException(__result);
    return value;
  }

  /**
     *  target & path
     *
     *  Accessor to the string path.  The native version of these
     *  strings are not guaranteed to be a usable path to pass to
     *  NSPR or the C stdlib.  There are problems that affect
     *  platforms on which a path does not fully specify a file
     *  because two volumes can have the same name (e.g., XP_MAC).
     *  This is solved by holding "private", native data in the
     *  nsIFile implementation.  This native data is lost when
     *  you convert to a string.
     *
     *      DO NOT PASS TO USE WITH NSPR OR STDLIB!
     *
     *  target
     *      Find out what the symlink points at.  Will give error
     *      (NS_ERROR_FILE_INVALID_PATH) if not a symlink.
     *
     *  path
     *      Find out what the nsIFile points at.
     *
     *  Note that the ACString attributes are returned in the 
     *  native filesystem charset.
     *
     */
  /* readonly attribute AString target; */
  wchar[] Target(){
    scope auto value = new AString();
    nsresult __result = inner.GetTarget(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }

  /* [noscript] readonly attribute ACString nativeTarget; */
  char[] NativeTarget(){
    scope auto value = new ACString();
    nsresult __result = inner.GetNativeTarget(cast(nsACString*)value);
    CheckException(__result);
    return value.GetString();
  }

  /* readonly attribute AString path; */
  wchar[] Path(){
    scope auto value = new AString();
    nsresult __result = inner.GetPath(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }

  /* [noscript] readonly attribute ACString nativePath; */
  char[] NativePath(){
    scope auto value = new ACString();
    nsresult __result = inner.GetNativePath(cast(nsACString*)value);
    CheckException(__result);
    return value.GetString();
  }

  /* boolean exists (); */
  PRBool Exists(){
    PRBool _retval;
    nsresult __result = inner.Exists(&_retval);
    CheckException(__result);
    return _retval;
  }

  /* boolean isWritable (); */
  PRBool IsWritable(){
    PRBool _retval;
    nsresult __result = inner.IsWritable(&_retval);
    CheckException(__result);
    return _retval;
  }

  /* boolean isReadable (); */
  PRBool IsReadable(){
    PRBool _retval;
    nsresult __result = inner.IsReadable(&_retval);
    CheckException(__result);
    return _retval;
  }

  /* boolean isExecutable (); */
  PRBool IsExecutable(){
    PRBool _retval;
    nsresult __result = inner.IsExecutable(&_retval);
    CheckException(__result);
    return _retval;
  }

  /* boolean isHidden (); */
  PRBool IsHidden(){
    PRBool _retval;
    nsresult __result = inner.IsHidden(&_retval);
    CheckException(__result);
    return _retval;
  }

  /* boolean isDirectory (); */
  PRBool IsDirectory(){
    PRBool _retval;
    nsresult __result = inner.IsDirectory(&_retval);
    CheckException(__result);
    return _retval;
  }

  /* boolean isFile (); */
  PRBool IsFile(){
    PRBool _retval;
    nsresult __result = inner.IsFile(&_retval);
    CheckException(__result);
    return _retval;
  }

  /* boolean isSymlink (); */
  PRBool IsSymlink(){
    PRBool _retval;
    nsresult __result = inner.IsSymlink(&_retval);
    CheckException(__result);
    return _retval;
  }

  /**
     * Not a regular file, not a directory, not a symlink.
     */
  /* boolean isSpecial (); */
  PRBool IsSpecial(){
    PRBool _retval;
    nsresult __result = inner.IsSpecial(&_retval);
    CheckException(__result);
    return _retval;
  }

  /**
     *  createUnique
     *  
     *  This function will create a new file or directory in the
     *  file system. Any nodes that have not been created or
     *  resolved, will be.  If this file already exists, we try
     *  variations on the leaf name "suggestedName" until we find
     *  one that did not already exist.
     *
     *  If the search for nonexistent files takes too long
     *  (thousands of the variants already exist), we give up and
     *  return NS_ERROR_FILE_TOO_BIG.
     *
     *   @param type
     *       This specifies the type of file system object
     *       to be made.  The only two types at this time
     *       are file and directory which are defined above.
     *       If the type is unrecongnized, we will return an
     *       error (NS_ERROR_FILE_UNKNOWN_TYPE).
     *
     *   @param permissions
     *       The unix style octal permissions.  This may
     *       be ignored on systems that do not need to do
     *       permissions.
     */
  /* void createUnique (in unsigned long type, in unsigned long permissions); */
  void CreateUnique(PRUint32 type, PRUint32 permissions){
    nsresult __result = inner.CreateUnique(type, permissions);
    CheckException(__result);
  }

  /**
      * clone()
      *
      * This function will allocate and initialize a nsIFile object to the
      * exact location of the |this| nsIFile.
      *
      *   @param file
      *          A nsIFile which this object will be initialize
      *          with.
      *
      */
  /* nsIFile clone (); */
  nsIFileD  Clone(){
    nsIFile _retval;
    nsresult __result = inner.Clone(&_retval);
    CheckException(__result);
    return new nsIFileD(_retval);
  }

  /**
     *  Will determine if the inFile equals this.
     */
  /* boolean equals (in nsIFile inFile); */
  PRBool Equals(nsIFileD inFile){
    PRBool _retval;
    nsresult __result = inner.Equals(inFile ? cast(nsIFile)inFile : null, &_retval);
    CheckException(__result);
    return _retval;
  }

  /**
     *  Will determine if inFile is a descendant of this file
     *  If |recur| is true, look in subdirectories too
     */
  /* boolean contains (in nsIFile inFile, in boolean recur); */
  PRBool Contains(nsIFileD inFile, PRBool recur){
    PRBool _retval;
    nsresult __result = inner.Contains(inFile ? cast(nsIFile)inFile : null, recur, &_retval);
    CheckException(__result);
    return _retval;
  }

  /**
     *  Parent will be null when this is at the top of the volume.
     */
  /* readonly attribute nsIFile parent; */
  nsIFileD  Parent(){
    nsIFile value;
    nsresult __result = inner.GetParent(&value);
    CheckException(__result);
    return new nsIFileD(value);
  }

  /**
     *  Returns an enumeration of the elements in a directory. Each
     *  element in the enumeration is an nsIFile.
     *
     *   @return NS_ERROR_FILE_NOT_DIRECTORY if the current nsIFile does
     *           not specify a directory.
     */
  /* readonly attribute nsISimpleEnumerator directoryEntries; */
  nsISimpleEnumeratorD  DirectoryEntries(){
    nsISimpleEnumerator value;
    nsresult __result = inner.GetDirectoryEntries(&value);
    CheckException(__result);
    return new nsISimpleEnumeratorD(value);
  }

private:
  nsIFile inner;

}

