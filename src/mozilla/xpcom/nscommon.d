module mozilla.xpcom.nscommon;

import mozilla.xpcom.nsID;


alias void* nsIDeviceContext;

alias void* nsRect;

alias void* nsILayoutHistoryState;

alias void* nsIWidget;

alias void* nsPresContext;

alias void* nsEventStatus;

alias void* nsEvent;

alias void* nsIPresShell;

alias void* nsIFilePath;

alias void* nsFileSpec;

alias void* nsMsgKeyArray;

alias void* nsIOFileStream;

alias void* nsMsgResultElement;

alias void* nsMsgSearchValue;

alias void* nsOutputStream;

alias void* PLEvent;

alias void* PLHandleEventProc;

alias void* nsIContent;

alias void* PLDestroyEventProc;

alias void* PRThread;

alias void* PLEventQueue;

alias void* nsXPTMethodInfo;

alias void* nsXPTConstant;

alias void* nsXPTParamInfo;

alias void* nsXPTType;

alias void* nsRDFSortState;

alias void* JSContext;

alias void* JSPrincipals;

alias void* nsSize;

alias void* nsPluginEvent;

alias void* nsIntRect;

alias void* nsFont;

alias void* DIR_Server;

alias void* nsMargin;

alias void* nsMIMEType;

alias void* nsByteRange;

alias void* nsPluginStreamType;

alias void* nsPluginInstancePeerVariable;

alias void* nsPluginMode;

alias void* VObject;

alias void* VObjectIterator;

alias void* nsPluginWindow;

alias void* nsPluginPrint;

alias void* nsPluginInstanceVariable;

alias void* nsPluginNativeWindow;

alias void* LSException;

alias void* nsIDocument;

alias void* nsIMdbTableRowCursor;

alias void* nsIMdbRow;

alias void* nsIRegion;

alias void* nsIMAPNamespace;

alias void* nsIImapHostSessionList;

alias void* nsVoidArray;

alias void* XPathException;

alias void* nsOutputFileStream;

alias void* nsIChannelSecurityInfo;

alias void* nsIScriptElement;

alias void* nsMsgAttachmentData;

alias void* nsMsgAttachedFile;

alias void* nsMsgAttachmentHandler;

alias void* TStateListenerNotification;

alias void* nsIAccessibleEventListener;

alias void* nsIFrame;

alias void* nsObjectFrame;

//alias void* nscolor;

alias void* nsSVGCharacterPosition;

alias void* nsIRenderingContext;

alias void* nsSVGPathData;

alias void* JSObject;

alias void* jsval;

alias void* jsid;

alias void* nxIXPConnectWrappedNative;

alias void* nsIServiceManagerObsolete;

alias void* nsPluginVariable;

alias void* nsPluginManagerVariable;

alias nsIID* REFNSIID;

alias void* nsIUnicodeDecoder;

alias void* nsIJVMPlugin;

alias void* nsISecureEnv;

alias void* JNIEnv;

alias void* JRIEnv;

alias void* jref;

alias void* nsPluginRect;

alias void* nsPluginRegion;

alias void* sqlite3_stmt;

alias void* nsIWordBreaker;

alias void* nsTextEventReply;

alias void* nsIPrivateTextRangeList;

alias void* nsReconversionEventReply;

alias void* nsQueryCaretRectEventReply;

alias void* nsIEditingShell;

alias void* nsISocketEventSink;

alias void* nsIMessageView;

alias void* JSRuntime;

alias void* nsIScrollbarMediator;

alias void* XPTMethodDescriptor;

alias void* XPTConstDescriptor;

alias void* XPTParamDescriptor;

alias void* XPTTypeDescriptor;

alias void* jobject;

alias void* JSDValue;

alias void* JSDContext;

alias void* JSDProperty;

alias void* JSDObject;

alias void* JSDThreadState;

alias void* JSDStackFrameInfo;

alias void* JSDScript;

alias void* nsISAXEntityResolver;

alias void* nsMsgKeySet;

alias void* nsIMdbEnv;

alias void* nsLocalFolderScanState;

alias void* mdb_column;

alias void* nsIMdbTable;

alias void* mdb_scope;

alias void* nsIScriptContext;

alias void* nsIScriptGlobalObject;

alias void* nsICSSStyleSheet;

alias void* nsIFrameSelection;

alias void* nsPoint;

alias void* nsIUnicodeEncoder;

alias void* nsPluginPlatformWindowRef;



class VoidClass
{
	this(void* p)
	{
	}

	void* opCast()
	{
		return null;
	}

	void opAssign(void* p)
	{
	}
}

alias VoidClass nsIDeviceContextD;

alias VoidClass nsRectD;

alias VoidClass nsILayoutHistoryStateD;

alias VoidClass nsIWidgetD;

alias VoidClass nsPresContextD;

alias VoidClass nsEventStatusD;

alias VoidClass nsEventD;

alias VoidClass nsIPresShellD;

alias VoidClass nsIFilePathD;

alias VoidClass nsFileSpecD;

alias VoidClass nsMsgKeyArrayD;

alias VoidClass nsIOFileStreamD;

alias VoidClass nsMsgResultElementD;

alias VoidClass nsMsgSearchValueD;

alias VoidClass nsOutputStreamD;

alias VoidClass PLEventD;

alias VoidClass PLHandleEventProcD;

alias VoidClass nsIContentD;

alias VoidClass PLDestroyEventProcD;

alias VoidClass PRThreadD;

alias VoidClass PLEventQueueD;

alias VoidClass nsXPTMethodInfoD;

alias VoidClass nsXPTConstantD;

alias VoidClass nsXPTParamInfoD;

alias VoidClass nsXPTTypeD;

alias VoidClass nsRDFSortStateD;

alias VoidClass JSContextD;

alias VoidClass JSPrincipalsD;

alias VoidClass nsSizeD;

alias VoidClass nsPluginEventD;

alias VoidClass nsIntRectD;

alias VoidClass nsFontD;

alias VoidClass DIR_ServerD;

alias VoidClass nsMarginD;

alias VoidClass nsMIMETypeD;

alias VoidClass nsByteRangeD;

alias VoidClass nsPluginStreamTypeD;

alias VoidClass nsPluginInstancePeerVariableD;

alias VoidClass nsPluginModeD;

alias VoidClass VObjectD;

alias VoidClass VObjectIteratorD;

alias VoidClass nsPluginWindowD;

alias VoidClass nsPluginPrintD;

alias VoidClass nsPluginInstanceVariableD;

alias VoidClass nsPluginNativeWindowD;

alias VoidClass LSExceptionD;

alias VoidClass nsIDocumentD;

alias VoidClass nsIMdbTableRowCursorD;

alias VoidClass nsIMdbRowD;

alias VoidClass nsIRegionD;

alias VoidClass nsIMAPNamespaceD;

alias VoidClass nsIImapHostSessionListD;

alias VoidClass nsVoidArrayD;

alias VoidClass XPathExceptionD;

alias VoidClass nsOutputFileStreamD;

alias VoidClass nsIChannelSecurityInfoD;

alias VoidClass nsIScriptElementD;

alias VoidClass nsMsgAttachmentDataD;

alias VoidClass nsMsgAttachedFileD;

alias VoidClass nsMsgAttachmentHandlerD;

alias VoidClass TStateListenerNotificationD;

alias VoidClass nsIAccessibleEventListenerD;

alias VoidClass nsIFrameD;

alias VoidClass nsObjectFrameD;

alias VoidClass nscolorD;

alias VoidClass nsSVGCharacterPositionD;

alias VoidClass nsIRenderingContextD;

alias VoidClass nsSVGPathDataD;

alias VoidClass JSObjectD;

alias VoidClass jsvalD;

alias VoidClass jsidD;

alias VoidClass nxIXPConnectWrappedNativeD;

alias VoidClass nsIServiceManagerObsoleteD;

alias VoidClass nsPluginVariableD;

alias VoidClass nsPluginManagerVariableD;

alias VoidClass nsIUnicodeDecoderD;

alias VoidClass nsIJVMPluginD;

alias VoidClass nsISecureEnvD;

alias VoidClass JNIEnvD;

alias VoidClass JRIEnvD;

alias VoidClass jrefD;

alias VoidClass nsPluginRectD;

alias VoidClass nsPluginRegionD;

alias VoidClass sqlite3_stmtD;

alias VoidClass nsIWordBreakerD;

alias VoidClass nsTextEventReplyD;

alias VoidClass nsIPrivateTextRangeListD;

alias VoidClass nsReconversionEventReplyD;

alias VoidClass nsQueryCaretRectEventReplyD;

alias VoidClass nsIEditingShellD;

alias VoidClass nsISocketEventSinkD;

alias VoidClass nsIMessageViewD;

alias VoidClass JSRuntimeD;

alias VoidClass nsIScrollbarMediatorD;

alias VoidClass XPTMethodDescriptorD;

alias VoidClass XPTConstDescriptorD;

alias VoidClass XPTParamDescriptorD;

alias VoidClass XPTTypeDescriptorD;

alias VoidClass jobjectD;

alias VoidClass JSDValueD;

alias VoidClass JSDContextD;

alias VoidClass JSDPropertyD;

alias VoidClass JSDObjectD;

alias VoidClass JSDThreadStateD;

alias VoidClass JSDStackFrameInfoD;

alias VoidClass JSDScriptD;

alias VoidClass nsISAXEntityResolverD;

alias VoidClass nsMsgKeySetD;

alias VoidClass nsIMdbEnvD;

alias VoidClass nsLocalFolderScanStateD;

alias VoidClass mdb_columnD;

alias VoidClass nsIMdbTableD;

alias VoidClass mdb_scopeD;

alias VoidClass nsIScriptContextD;

alias VoidClass nsIScriptGlobalObjectD;

alias VoidClass nsICSSStyleSheetD;

alias VoidClass nsIFrameSelectionD;

alias VoidClass nsPointD;

alias VoidClass nsIUnicodeEncoderD;

alias VoidClass nsPluginPlatformWindowRefD;




