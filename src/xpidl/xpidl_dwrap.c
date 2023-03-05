/* -*- Mode: C; tab-width: 4; indent-tabs-mode: nil; c-basic-offset: 4 -*- */
/* ***** BEGIN LICENSE BLOCK *****
 * Version: MPL 1.1/GPL 2.0/LGPL 2.1
 *
 * The contents of this file are subject to the Mozilla Public License Version
 * 1.1 (the "License"); you may not use this file except in compliance with
 * the License. You may obtain a copy of the License at
 * http://www.mozilla.org/MPL/
 *
 * Software distributed under the License is distributed on an "AS IS" basis,
 * WITHOUT WARRANTY OF ANY KIND, either express or implied. See the License
 * for the specific language governing rights and limitations under the
 * License.
 *
 * The Original Code is mozilla.org code.
 *
 * The Initial Developer of the Original Code is
 * Netscape Communications Corporation.
 * Portions created by the Initial Developer are Copyright (C) 1998
 * the Initial Developer. All Rights Reserved.
 *
 * Contributor(s):
 *
 * Alternatively, the contents of this file may be used under the terms of
 * either the GNU General Public License Version 2 or later (the "GPL"), or
 * the GNU Lesser General Public License Version 2.1 or later (the "LGPL"),
 * in which case the provisions of the GPL or the LGPL are applicable instead
 * of those above. If you wish to allow use of your version of this file only
 * under the terms of either the GPL or the LGPL, and not to allow others to
 * use your version of this file under the terms of the MPL, indicate your
 * decision by deleting the provisions above and replace them with the notice
 * and other provisions required by the GPL or the LGPL. If you do not delete
 * the provisions above, a recipient may use your version of this file under
 * the terms of any one of the MPL, the GPL or the LGPL.
 *
 * ***** END LICENSE BLOCK ***** */

/*
 * Generate XPCOM headers from XPIDL.
 */

#include "xpidl.h"
#include <ctype.h>

#define AS_DECL 0
#define AS_CALL 1
#define AS_IMPL 2

static gboolean write_method_signature(IDL_tree method_tree, FILE *outfile,
                                       const char *className);
static gboolean write_attr_accessor(IDL_tree attr_tree, FILE * outfile,
                                    gboolean getter, 
                                    int mode, const char *className);
static gboolean
write_param_conversion(IDL_tree param_tree, FILE *outfile, int convall, int isout);

static gboolean
write_method_call(IDL_tree method_tree, FILE *outfile,
                       const char *className);


static void
write_indent(FILE *outfile) {
    fputs("  ", outfile);
}

static void
write_classname_iid_define(FILE *file, const char *className)
{
    const char *iidName;
    if (className[0] == 'n' && className[1] == 's') {
        /* backcompat naming styles */
        fputs("NS_", file);
        iidName = className + 2;
    } else {
        iidName = className;
    }
    while (*iidName)
        fputc(toupper(*iidName++), file);
    fputs("_IID", file);
}

static gboolean
header_prolog(TreeState *state)
{
	char* className;
    const char *define;
	define	= xpidl_basename(state->basename);
    fprintf(state->file, "/*\n * DO NOT EDIT.  THIS FILE IS GENERATED FROM"
            " %s.idl\n */\n", state->basename);
    fprintf(state->file,
            "\nmodule mozilla.dxpcom.%sD;\n",
            define);
	
	fprintf(state->file,
			"\npublic import mozilla.dxpcom.nsrootidlD;\n");

	fprintf(state->file,
			"\n\npublic import mozilla.xpcom.%s;\n",
			define);
	
	fprintf(state->file,
			"\n\npublic import mozilla.dxpcom.%sD;\n",
			define);
	
	if (strcmp(define, "nsIDirectoryService") == 0)
		fprintf(state->file,
				"\n\npublic import mozilla.xpcom.nsISimpleEnumerator;\n"
				"public import mozilla.dxpcom.nsISimpleEnumeratorD;\n");
		

    if (state->base_includes != NULL) {
        guint len = g_slist_length(state->base_includes);
        guint i;

        fputc('\n', state->file);
        for (i = 0; i < len; i++) {
            char *ident, *dot;
            
            ident = (char *)g_slist_nth_data(state->base_includes, i);
            
            /* suppress any trailing .extension */
            
            /* XXX use g_basename instead ? ? */
            
            dot = strrchr(ident, '.');
            if (dot != NULL)
                *dot = '\0';
            
			className = (char *)g_slist_nth_data(state->base_includes, i);
            if (strcmp(className, "domstubs") == 0) {
				fputs("public import mozilla.xpcom.nsrootidl;\n\npublic import mozilla.xpcom.nsISupports;\n\nalias PRUint64 DOMTimeStamp;\n\n", state->file);
				fputs("public import mozilla.xpcom.nsIDOMAttr;\n\npublic import mozilla.xpcom.nsIDOMCDATASection;\n\n", state->file);
				fputs("public import mozilla.xpcom.nsIDOMCharacterData;\n\npublic import mozilla.xpcom.nsIDOMComment;\n\n", state->file);
				fputs("public import mozilla.xpcom.nsIDOMDOMImplementation;\n    \npublic import mozilla.xpcom.nsIDOMDocument;\n\n", state->file);
				fputs("public import mozilla.xpcom.nsIDOMDocumentFragment;\n\npublic import mozilla.xpcom.nsIDOMDocumentType;\n\n", state->file);
				fputs("public import mozilla.xpcom.nsIDOMElement;\n\npublic import mozilla.xpcom.nsIDOMEntity;\n\n", state->file);
				fputs("public import mozilla.xpcom.nsIDOMEntityReference;\n\npublic import mozilla.xpcom.nsIDOMNSDocument;\n\n", state->file);
				fputs("public import mozilla.xpcom.nsIDOMNamedNodeMap;\n\npublic import mozilla.xpcom.nsIDOMNode;\n\n", state->file);
				fputs("public import mozilla.xpcom.nsIDOMNodeList;\n\npublic import mozilla.xpcom.nsIDOMNotation;\n\n", state->file);
				fputs("public import mozilla.xpcom.nsIDOMProcessingInstruction;\n\npublic import mozilla.xpcom.nsIDOMText;\n\n", state->file);
				fputs("public import mozilla.xpcom.nsIDOMDOMStringList;\n\npublic import mozilla.xpcom.nsIDOMNameList;\n\n", state->file);
				fputs("//public import mozilla.xpcom.DOMException;\n\n//public import mozilla.xpcom.RangeException;\n\n", state->file);
				fputs("public import mozilla.xpcom.nsIDOMEvent;\n\npublic import mozilla.xpcom.nsIDOMEventListener;\n\n", state->file);
				fputs("public import mozilla.xpcom.nsIDOMWindow;\n\npublic import mozilla.xpcom.nsIDOMHTMLFormElement;\n\n", state->file);
				fputs("public import mozilla.xpcom.nsIDOMBarProp;\n\npublic import mozilla.xpcom.nsIDOMWindowCollection;\n\n", state->file);
				fputs("public import mozilla.xpcom.nsIDOMHTMLCollection;\n\npublic import mozilla.xpcom.nsIDOMNavigator;\n\n", state->file);
				fputs("public import mozilla.xpcom.nsIDOMScreen;\n\npublic import mozilla.xpcom.nsIDOMHistory;\n\n", state->file);
				fputs("public import mozilla.xpcom.nsIDOMPkcs11;\n\npublic import mozilla.xpcom.nsIDOMMimeTypeArray;\n\n", state->file);
				fputs("public import mozilla.xpcom.nsIDOMPluginArray;\n\npublic import mozilla.xpcom.nsIDOMCrypto;\n\n", state->file);
				fputs("public import mozilla.xpcom.nsIDOMCRMFObject;\n\npublic import mozilla.xpcom.nsIDOMPlugin;\n\n", state->file);
				fputs("public import mozilla.xpcom.nsIDOMMimeType;\n\npublic import mozilla.xpcom.nsIDOMCSSRule;\n\n", state->file);
				fputs("public import mozilla.xpcom.nsIDOMCSSRuleList;\n\npublic import mozilla.xpcom.nsIDOMStyleSheet;\n\n", state->file);
				fputs("public import mozilla.xpcom.nsIDOMCSSValue;\n\npublic import mozilla.xpcom.nsIDOMMediaList;\n\n", state->file);
				fputs("public import mozilla.xpcom.nsIDOMCSSStyleSheet;\n\npublic import mozilla.xpcom.nsIDOMCSSStyleDeclaration;\n\n", state->file);
				fputs("public import mozilla.xpcom.nsIDOMAbstractView;\n\npublic import mozilla.xpcom.nsIDOMDocumentView;\n\n", state->file);
				fputs("public import mozilla.xpcom.nsIDOMXULSelectCntrlItemEl;\n\npublic import mozilla.xpcom.nsIDOMHTMLTableCaptionElem;\n\n", state->file);
				fputs("public import mozilla.xpcom.nsIDOMHTMLTableSectionElem;\n\npublic import mozilla.xpcom.nsIDOMStyleSheetList;\n\n", state->file);
				fputs("public import mozilla.xpcom.nsIDOMKeyEvent;\n\npublic import mozilla.xpcom.nsIDOMCounter;\n\n", state->file);
				fputs("public import mozilla.xpcom.nsIDOMRect;\n\npublic import mozilla.xpcom.nsIDOMRGBColor;\n\n", state->file);
				fputs("public import mozilla.xpcom.nsIDOMCounter;\n\npublic import mozilla.xpcom.nsIDOMCSSPrimitiveValue;\n\n", state->file);
				fputs("public import mozilla.xpcom.nsIDOMEventGroup;\n\n", state->file);


				fputs("public import mozilla.dxpcom.nsrootidlD;\n\npublic import mozilla.dxpcom.nsISupportsD;\n\nalias PRUint64 DOMTimeStampD;\n\n", state->file);
				fputs("public import mozilla.dxpcom.nsIDOMAttrD;\n\npublic import mozilla.dxpcom.nsIDOMCDATASectionD;\n\n", state->file);
				fputs("public import mozilla.dxpcom.nsIDOMCharacterDataD;\n\npublic import mozilla.dxpcom.nsIDOMCommentD;\n\n", state->file);
				fputs("public import mozilla.dxpcom.nsIDOMDOMImplementationD;\n    \npublic import mozilla.dxpcom.nsIDOMDocumentD;\n\n", state->file);
				fputs("public import mozilla.dxpcom.nsIDOMDocumentFragmentD;\n\npublic import mozilla.dxpcom.nsIDOMDocumentTypeD;\n\n", state->file);
				fputs("public import mozilla.dxpcom.nsIDOMElementD;\n\npublic import mozilla.dxpcom.nsIDOMEntityD;\n\n", state->file);
				fputs("public import mozilla.dxpcom.nsIDOMEntityReferenceD;\n\npublic import mozilla.dxpcom.nsIDOMNSDocumentD;\n\n", state->file);
				fputs("public import mozilla.dxpcom.nsIDOMNamedNodeMapD;\n\npublic import mozilla.dxpcom.nsIDOMNodeD;\n\n", state->file);
				fputs("public import mozilla.dxpcom.nsIDOMNodeListD;\n\npublic import mozilla.dxpcom.nsIDOMNotationD;\n\n", state->file);
				fputs("public import mozilla.dxpcom.nsIDOMProcessingInstructionD;\n\npublic import mozilla.dxpcom.nsIDOMTextD;\n\n", state->file);
				fputs("public import mozilla.dxpcom.nsIDOMDOMStringListD;\n\npublic import mozilla.dxpcom.nsIDOMNameListD;\n\n", state->file);
				fputs("//public import mozilla.dxpcom.DOMExceptionD;\n\n//public import mozilla.dxpcom.RangeExceptionD;\n\n", state->file);
				fputs("public import mozilla.dxpcom.nsIDOMEventD;\n\npublic import mozilla.dxpcom.nsIDOMEventListenerD;\n\n", state->file);
				fputs("public import mozilla.dxpcom.nsIDOMWindowD;\n\npublic import mozilla.dxpcom.nsIDOMHTMLFormElementD;\n\n", state->file);
				fputs("public import mozilla.dxpcom.nsIDOMBarPropD;\n\npublic import mozilla.dxpcom.nsIDOMWindowCollectionD;\n\n", state->file);
				fputs("public import mozilla.dxpcom.nsIDOMHTMLCollectionD;\n\npublic import mozilla.dxpcom.nsIDOMNavigatorD;\n\n", state->file);
				fputs("public import mozilla.dxpcom.nsIDOMScreenD;\n\npublic import mozilla.dxpcom.nsIDOMHistoryD;\n\n", state->file);
				fputs("public import mozilla.dxpcom.nsIDOMPkcs11D;\n\npublic import mozilla.dxpcom.nsIDOMMimeTypeArrayD;\n\n", state->file);
				fputs("public import mozilla.dxpcom.nsIDOMPluginArrayD;\n\npublic import mozilla.dxpcom.nsIDOMCryptoD;\n\n", state->file);
				fputs("public import mozilla.dxpcom.nsIDOMCRMFObjectD;\n\npublic import mozilla.dxpcom.nsIDOMPluginD;\n\n", state->file);
				fputs("public import mozilla.dxpcom.nsIDOMMimeTypeD;\n\npublic import mozilla.dxpcom.nsIDOMCSSRuleD;\n\n", state->file);
				fputs("public import mozilla.dxpcom.nsIDOMCSSRuleListD;\n\npublic import mozilla.dxpcom.nsIDOMStyleSheetD;\n\n", state->file);
				fputs("public import mozilla.dxpcom.nsIDOMCSSValueD;\n\npublic import mozilla.dxpcom.nsIDOMMediaListD;\n\n", state->file);
				fputs("public import mozilla.dxpcom.nsIDOMCSSStyleSheetD;\n\npublic import mozilla.dxpcom.nsIDOMCSSStyleDeclarationD;\n\n", state->file);
				fputs("public import mozilla.dxpcom.nsIDOMAbstractViewD;\n\npublic import mozilla.dxpcom.nsIDOMDocumentViewD;\n\n", state->file);
				fputs("public import mozilla.dxpcom.nsIDOMXULSelectCntrlItemElD;\n\npublic import mozilla.dxpcom.nsIDOMHTMLTableCaptionElemD;\n\n", state->file);
				fputs("public import mozilla.dxpcom.nsIDOMHTMLTableSectionElemD;\n\npublic import mozilla.dxpcom.nsIDOMStyleSheetListD;\n\n", state->file);
				fputs("public import mozilla.dxpcom.nsIDOMKeyEventD;\n\npublic import mozilla.dxpcom.nsIDOMCounterD;\n\n", state->file);
				fputs("public import mozilla.dxpcom.nsIDOMRectD;\n\npublic import mozilla.dxpcom.nsIDOMRGBColorD;\n\n", state->file);
				fputs("public import mozilla.dxpcom.nsIDOMCounterD;\n\npublic import mozilla.dxpcom.nsIDOMCSSPrimitiveValueD;\n\n", state->file);
				fputs("public import mozilla.dxpcom.nsIDOMEventGroupD;\n\n", state->file);
            }
            else if (strcmp(className, "nsITreeColumn") != 0) {
                fprintf(state->file, "public import mozilla.xpcom.%s;\n",
                    className);
                fprintf(state->file, "public import mozilla.dxpcom.%sD;\n",
                    className);
            }
        }
        if (i > 0)
            fputc('\n', state->file);
    }
    
    return TRUE;
}

static gboolean
header_epilog(TreeState *state)
{
    return TRUE;
}


static gboolean
interface(TreeState *state)
{
    IDL_tree iface = state->tree, iter, orig;
    char *className = IDL_IDENT(IDL_INTERFACE(iface).ident).str;
    char *classNameUpper = NULL;
    char *classNameImpl = NULL;
    char *cp;
    gboolean ok = TRUE;
    gboolean keepvtable;
    const char *iid;
    const char *name_space;
    struct nsID id;
    char iid_parsed[UUID_LENGTH];
    GSList *doc_comments = IDL_IDENT(IDL_INTERFACE(iface).ident).comments;

    if (!verify_interface_declaration(iface))
        return FALSE;

#define FAIL    do {ok = FALSE; goto out;} while(0)

    fprintf(state->file,   "\n/* starting wrapper class:    %s */\n",
            className);

    name_space = IDL_tree_property_get(IDL_INTERFACE(iface).ident, "namespace");
    if (name_space) {
        fprintf(state->file, "/* namespace:             %s */\n",
                name_space);
        fprintf(state->file, "/* fully qualified name:  %s.%s */\n",
                name_space,className);
    }

    iid = IDL_tree_property_get(IDL_INTERFACE(iface).ident, "uuid");
    if (iid) {
        /* Redundant, but a better error than 'cannot parse.' */
        if (strlen(iid) != 36) {
            IDL_tree_error(state->tree, "IID %s is the wrong length\n", iid);
            FAIL;
        }

        /*
         * Parse uuid and then output resulting nsID to string, to validate
         * uuid and normalize resulting .h files.
         */
        if (!xpidl_parse_iid(&id, iid)) {
            IDL_tree_error(state->tree, "cannot parse IID %s\n", iid);
            FAIL;
        }
        if (!xpidl_sprint_iid(&id, iid_parsed)) {
            IDL_tree_error(state->tree, "error formatting IID %s\n", iid);
            FAIL;
        }
    } else {
        IDL_tree_error(state->tree, "interface %s lacks a uuid attribute\n", 
            className);
        FAIL;
    }

    if (doc_comments != NULL)
        printlist(state->file, doc_comments);

    /*
     * NS_NO_VTABLE is defined in nsISupportsUtils.h, and defined on windows
     * to __declspec(novtable) on windows.  This optimization is safe
     * whenever the constructor calls no virtual methods.  Writing in IDL
     * almost guarantees this, except for the case when a %{C++ block occurs in
     * the interface.  We detect that case, and emit a macro call that disables
     * the optimization.
     */
    keepvtable = FALSE;
    for (iter = IDL_INTERFACE(state->tree).body;
         iter != NULL;
         iter = IDL_LIST(iter).next)
    {
        IDL_tree data = IDL_LIST(iter).data;
        if (IDL_NODE_TYPE(data) == IDLN_CODEFRAG)
            keepvtable = TRUE;
    }
    
    /* The interface declaration itself. */
    fprintf(state->file,
            "class %sD", className);
    
    if ((iter = IDL_INTERFACE(iface).inheritance_spec)) {
        fputs(" : ", state->file);
        if (IDL_LIST(iter).next != NULL) {
            IDL_tree_error(iter,
                           "multiple inheritance is not supported by xpidl");
            FAIL;
        }
        fprintf(state->file, "public %sD", IDL_IDENT(IDL_LIST(iter).data).str);
    }
    fputs(" {\n", state->file);

    if (iid) {
		fputs("\n  static const nsIID IID = ", state->file);
        write_classname_iid_define(state->file, className);
        fputs(";\n\n", state->file);
    }

	fprintf(state->file, "\n  this(%s intr){\n", className);
	if (IDL_INTERFACE(iface).inheritance_spec && strcmp(className, "nsISupports") != 0)
		fputs("    super(intr);\n", state->file);
	fputs("    this.inner = intr;\n", state->file);
	fputs("  }\n\n", state->file);

	fprintf(state->file, "  %s opCast() {\n", className);
	fputs("    return inner;\n", state->file);
	fputs("  }\n\n", state->file);
	
	fprintf(state->file, "  void opAssign(%s value) {\n", className);
	fputs("    inner = value;\n", state->file);
	fputs("  }\n\n", state->file);

    orig = state->tree; /* It would be nice to remove this state-twiddling. */

    state->tree = IDL_INTERFACE(iface).body;

    if (state->tree && !xpidl_process_node(state))
        FAIL;

	fputs("private:\n", state->file);
	fprintf(state->file, "  %s inner;\n", className);
    fputs("\n}\n", state->file);
    fputc('\n', state->file);
#undef FAIL

out:
    if (classNameUpper)
        free(classNameUpper);
    if (classNameImpl)
        free(classNameImpl);
    return ok;
}

static gboolean
list(TreeState *state)
{
    IDL_tree iter;
    for (iter = state->tree; iter; iter = IDL_LIST(iter).next) {
        state->tree = IDL_LIST(iter).data;
        if (!xpidl_process_node(state))
            return FALSE;
    }
    return TRUE;
}

static gboolean
write_type(IDL_tree type_tree, gboolean is_out, FILE *outfile)
{
    if (!type_tree) {
        fputs("void", outfile);
        return TRUE;
    }

    switch (IDL_NODE_TYPE(type_tree)) {
      case IDLN_TYPE_INTEGER: {
        gboolean sign = IDL_TYPE_INTEGER(type_tree).f_signed;
        switch (IDL_TYPE_INTEGER(type_tree).f_type) {
          case IDL_INTEGER_TYPE_SHORT:
            fputs(sign ? "PRInt16" : "PRUint16", outfile);
            break;
          case IDL_INTEGER_TYPE_LONG:
            fputs(sign ? "PRInt32" : "PRUint32", outfile);
            break;
          case IDL_INTEGER_TYPE_LONGLONG:
            fputs(sign ? "PRInt64" : "PRUint64", outfile);
            break;
          default:
            g_error("Unknown integer type %d\n",
                    IDL_TYPE_INTEGER(type_tree).f_type);
            return FALSE;
        }
        break;
      }
      case IDLN_TYPE_CHAR:
        fputs("char", outfile);
        break;
      case IDLN_TYPE_WIDE_CHAR:
        fputs("PRUnichar", outfile); /* wchar_t? */
        break;
      case IDLN_TYPE_WIDE_STRING:
        fputs("PRUnichar*", outfile);
        break;
      case IDLN_TYPE_STRING:
        fputs("char*", outfile);
        break;
      case IDLN_TYPE_BOOLEAN:
        fputs("PRBool", outfile);
        break;
      case IDLN_TYPE_OCTET:
        fputs("PRUint8", outfile);
        break;
      case IDLN_TYPE_FLOAT:
        switch (IDL_TYPE_FLOAT(type_tree).f_type) {
          case IDL_FLOAT_TYPE_FLOAT:
            fputs("float", outfile);
            break;
          case IDL_FLOAT_TYPE_DOUBLE:
            fputs("double", outfile);
            break;
          /* XXX 'long double' just ignored, or what? */
          default:
            fprintf(outfile, "unknown_type_%d", IDL_NODE_TYPE(type_tree));
            break;
        }
        break;
      case IDLN_IDENT:
        if (UP_IS_NATIVE(type_tree)) {
            if (IDL_tree_property_get(type_tree, "domstring") ||
                IDL_tree_property_get(type_tree, "astring")) {
                fputs("wchar[]", outfile);
            } else if (IDL_tree_property_get(type_tree, "utf8string")) {
                fputs("char[]", outfile);
            } else if (IDL_tree_property_get(type_tree, "cstring")) {
                fputs("char[]", outfile);
            } else {
                char* type;
				int len, i;
				type = IDL_NATIVE(IDL_NODE_UP(type_tree)).user_type;
				if (strncmp(type, "struct ", 7) == 0)
					type += 7;
				else if(strncmp(type, "union ", 6) == 0)
					type += 6;
					
                len = strlen(type);

                if (strcmp(type, "const char* const*") == 0) {
                    fputs("char**", outfile);
                } else {
                    for (i=len - 1; i>=0; --i) {
                        if (type[i] == '&' || type[i] == '*') {
                            type[i] = '*';
                            if (i > 0 && type[i-1] != '&' && type[i-1] != '*')
                                i --;
                            continue;
                        }
                        if (type[i] == ' ') {
                            type = type + i + 1;
                            break;
                        }
                    }
                    fprintf(outfile, "%s", type);
                }

				if (IDL_tree_property_get(type_tree, "ptr")) {
					fputs(" *", outfile);
				} else if (IDL_tree_property_get(type_tree, "ref")) {
					fputs(" *", outfile);
				}
			}
        } else {
            fputs(IDL_IDENT(type_tree).str, outfile);
        }
        if (UP_IS_AGGREGATE(type_tree))
            fputs("D ", outfile);
        break;
      default:
        fprintf(outfile, "unknown_type_%d", IDL_NODE_TYPE(type_tree));
        break;
    }
    return TRUE;
}


/*
 * An attribute declaration looks like:
 *
 * [ IDL_ATTR_DCL]
 *   - param_type_spec [IDL_TYPE_* or NULL for void]
 *   - simple_declarations [IDL_LIST]
 *     - data [IDL_IDENT]
 *     - next [IDL_LIST or NULL if no more idents]
 *       - data [IDL_IDENT]
 */

#define ATTR_IDENT(tree) (IDL_IDENT(IDL_LIST(IDL_ATTR_DCL(tree).simple_declarations).data))
#define ATTR_TYPE_DECL(tree) (IDL_ATTR_DCL(tree).param_type_spec)
#define ATTR_TYPE(tree) (IDL_NODE_TYPE(ATTR_TYPE_DECL(tree)))

/*
 *  AS_DECL writes 'NS_IMETHOD foo(string bar, long sil)'
 *  AS_IMPL writes 'NS_IMETHODIMP className::foo(string bar, long sil)'
 *  AS_CALL writes 'foo(bar, sil)'
 */
static gboolean
write_attr_accessor(IDL_tree attr_tree, FILE * outfile,
                    gboolean getter, int mode, const char *className)
{
	IDL_tree type_spec;
	IDL_tree type_tree;
    char *attrname = ATTR_IDENT(attr_tree).str;

	if (getter)
	{
		if (!write_type(ATTR_TYPE_DECL(attr_tree), !getter, outfile))
		     return FALSE;
		fputs(" ", outfile);
	}
	else
	{
		fputs("void ", outfile);
	}

    fprintf(outfile, "%c%s",
            toupper(*attrname), attrname + 1);
	
	if (strncmp(attrname, "JS", 2) == 0)
		fputs("_", outfile);
	
	fputs("(", outfile);

	/* Setters for string, wstring, nsid, domstring, utf8string, 
	 * cstring and astring get const. 
	 */
	if (!getter &&
		(IDL_NODE_TYPE(ATTR_TYPE_DECL(attr_tree)) == IDLN_TYPE_STRING ||
		 IDL_NODE_TYPE(ATTR_TYPE_DECL(attr_tree)) == IDLN_TYPE_WIDE_STRING ||
		 IDL_tree_property_get(ATTR_TYPE_DECL(attr_tree), "nsid") ||
		 IDL_tree_property_get(ATTR_TYPE_DECL(attr_tree), "domstring")  ||
		 IDL_tree_property_get(ATTR_TYPE_DECL(attr_tree), "utf8string") ||
		 IDL_tree_property_get(ATTR_TYPE_DECL(attr_tree), "cstring")    ||
		 IDL_tree_property_get(ATTR_TYPE_DECL(attr_tree), "astring")))
	{
		fputs("", outfile);
	}

	if (!getter)
	{
		if (!write_type(ATTR_TYPE_DECL(attr_tree), getter, outfile))
			return FALSE;

		fprintf(outfile, "%s%s",
			(STARRED_TYPE(attr_tree) ? "" : " "),
			(getter && !DIPPER_TYPE(ATTR_TYPE_DECL(attr_tree)))? "*" : "");

		fprintf(outfile, "a%c%s)", toupper(attrname[0]), attrname + 1);
	}
	else
		fputs(")", outfile);

	fputs("{\n", outfile);

	type_spec = ATTR_TYPE_DECL(attr_tree);

	type_tree = type_spec;

	if (getter)
	{
		fputs("    ", outfile);

		switch (IDL_NODE_TYPE(type_spec)) {
		  case IDLN_TYPE_INTEGER: {
			gboolean sign = IDL_TYPE_INTEGER(type_tree).f_signed;
			switch (IDL_TYPE_INTEGER(type_tree).f_type) {
			  case IDL_INTEGER_TYPE_SHORT:
				fputs(sign ? "PRInt16" : "PRUint16", outfile);
				break;
			  case IDL_INTEGER_TYPE_LONG:
				fputs(sign ? "PRInt32" : "PRUint32", outfile);
				break;
			  case IDL_INTEGER_TYPE_LONGLONG:
				fputs(sign ? "PRInt64" : "PRUint64", outfile);
				break;
			  default:
				g_error("Unknown integer type %d\n",
						IDL_TYPE_INTEGER(type_tree).f_type);
				return FALSE;
			}
			break;
		  }
		  case IDLN_TYPE_CHAR:
			fputs("char", outfile);
			break;
		  case IDLN_TYPE_WIDE_CHAR:
			fputs("PRUnichar", outfile); /* wchar_t? */
			break;
		  case IDLN_TYPE_WIDE_STRING:
			fputs("PRUnichar*", outfile);
			break;
		  case IDLN_TYPE_STRING:
			fputs("char*", outfile);
			break;
		  case IDLN_TYPE_BOOLEAN:
			fputs("PRBool", outfile);
			break;
		  case IDLN_TYPE_OCTET:
			fputs("PRUint8", outfile);
			break;
		  case IDLN_TYPE_FLOAT:
			switch (IDL_TYPE_FLOAT(type_tree).f_type) {
			  case IDL_FLOAT_TYPE_FLOAT:
			    fputs("float", outfile);
			    break;
			  case IDL_FLOAT_TYPE_DOUBLE:
			    fputs("double", outfile);
			    break;
			  /* XXX 'long double' just ignored, or what? */
			  default:
			    fprintf(outfile, "unknown_type_%d", IDL_NODE_TYPE(type_tree));
			    break;
			}
			break;
		  case IDLN_IDENT:
			if (UP_IS_NATIVE(type_spec)) {
				if (IDL_tree_property_get(type_spec, "domstring") ||
					IDL_tree_property_get(type_spec, "astring")) {
					fprintf(outfile,
							"scope auto value = new AString();\n"
							"    nsresult __result = inner.Get%c%s(cast(nsAString*)value);\n",
							 toupper(*attrname), attrname + 1);
				} else if (IDL_tree_property_get(type_spec, "utf8string")) {
					fprintf(outfile,
							"scope auto value = new ACString();\n"
							"    nsresult __result = inner.Get%c%s(cast(nsACString*)value);\n",
							 toupper(*attrname), attrname + 1);
				} else if (IDL_tree_property_get(type_spec, "cstring")) {
					fprintf(outfile,
							"scope auto value = new ACString();\n"
							"    nsresult __result = inner.Get%c%s(cast(nsACString*)value);\n",
							 toupper(*attrname), attrname + 1);
				} else {
					char* ptype;
					int i, len;
					ptype = IDL_NATIVE(IDL_NODE_UP(type_spec)).user_type;
					if (strncmp(ptype, "struct ", 7) == 0)
						ptype += 7;
					else if(strncmp(ptype, "union ", 6) == 0)
						ptype += 6;
					
					len = strlen(ptype);
					
					if (strcmp(ptype, "const char* const*") == 0) {
						fputs("char**", outfile);
					} else {
						for (i=len - 1; i>=0; --i) {
							if (ptype[i] == '&' || ptype[i] == '*') {
								ptype[i] = '*';
								if (i > 0 && ptype[i-1] != '&' && ptype[i-1] != '*')
									i --;
								continue;
							}
							if (ptype[i] == ' ') {
								ptype = ptype + i + 1;
								break;
							}
						}
						fprintf(outfile, "%s", ptype);
					}

                    if (IDL_tree_property_get(type_spec, "ptr")) {
                         fputs(" *", outfile);
                    } else if (IDL_tree_property_get(type_spec, "ref")) {
                         fputs(" *", outfile);
                    }

					fprintf(outfile,
							" value;\n");
					fprintf(outfile,
							"    nsresult __result = inner.Get%c%s(&value);\n",
							toupper(*attrname), attrname + 1);
				}
			} else {
				if (UP_IS_NATIVE(type_spec)) {
					fprintf(outfile,
							"%s value;\n"
							"    nsresult __result = inner.Get%c%s(&value);\n",
							IDL_NATIVE(IDL_NODE_UP(type_spec)).user_type,
							toupper(*attrname), attrname + 1);
				}
				else if (UP_IS_AGGREGATE(type_spec)) {
					fprintf(outfile,
							"%s value;\n"
							"    nsresult __result = inner.Get%c%s(&value);\n",
							IDL_IDENT(type_spec).str,
							toupper(*attrname), attrname + 1);
				} else {
					fprintf(outfile,
							"%s value;\n"
							"    nsresult __result = inner.Get%c%s(&value);\n",
							IDL_IDENT(type_spec).str,
							toupper(*attrname), attrname + 1);
				}
			}

			break;
		  default:
			fputs("Unknown ", outfile);
		    break;
		}

		if (IDL_NODE_TYPE(type_spec) != IDLN_IDENT) {
			fputs(" value;\n", outfile);
			fprintf(outfile,
					"    nsresult __result = inner.Get%c%s(&value);\n",
					toupper(*attrname), attrname + 1);
		}

		fputs("    CheckException(__result);\n", outfile);

		switch (IDL_NODE_TYPE(type_spec)) {
		  case IDLN_IDENT:
			if (UP_IS_NATIVE(type_spec)) {
				if (IDL_tree_property_get(type_spec, "domstring") ||
					IDL_tree_property_get(type_spec, "astring")) {
					fprintf(outfile,
							"    return value.GetString();\n");
				} else if (IDL_tree_property_get(type_spec, "utf8string")) {
					fprintf(outfile,
							"    return value.GetString();\n");
				} else if (IDL_tree_property_get(type_spec, "cstring")) {
					fprintf(outfile,
							"    return value.GetString();\n");
				} else {
					fputs("    return value;\n", outfile);
				}
			} else {
				if (UP_IS_NATIVE(type_spec)) {
					fprintf(outfile,
							"    return value;\n");
				}
				else if (UP_IS_AGGREGATE(type_spec)) {
					fprintf(outfile,
							"    return new %sD(value);\n",
							IDL_IDENT(type_spec).str);
				} else {
					fprintf(outfile,
							"    return value;\n");
				}
			}
			break;
		  default:
		     fputs("    return value;\n", outfile);
		    break;
		}

	}
	else
	{
		fputs("    ", outfile);

		switch (IDL_NODE_TYPE(type_spec)) {
		  case IDLN_IDENT:
			if (UP_IS_NATIVE(type_spec)) {
				if (IDL_tree_property_get(type_spec, "domstring") ||
					IDL_tree_property_get(type_spec, "astring")) {
					fprintf(outfile,
							"scope auto value = new AString(a%c%s);\n"
							"    nsresult __result = inner.Set%c%s(cast(nsAString*)value);\n",
							toupper(*attrname), attrname + 1,
							toupper(*attrname), attrname + 1);
				} else if (IDL_tree_property_get(type_spec, "utf8string")) {
					fprintf(outfile,
							"scope auto value = new ACString(a%c%s);\n"
							"    nsresult __result = inner.Set%c%s(cast(nsACString*)value);\n",
							 toupper(*attrname), attrname + 1,
							 toupper(*attrname), attrname + 1);
				} else if (IDL_tree_property_get(type_spec, "cstring")) {
					fprintf(outfile,
							"scope auto value = new ACString(a%c%s);\n"
							"    nsresult __result = inner.Set%c%s(cast(nsACString*)value);\n",
							 toupper(*attrname), attrname + 1,
							 toupper(*attrname), attrname + 1);
				} else {
					fprintf(outfile,
							"nsresult __result = inner.Set%c%s(a%c%s);\n",
							 toupper(*attrname), attrname + 1,
							toupper(*attrname), attrname + 1);
				}
			} else {
				if (UP_IS_NATIVE(type_spec)) {
					fprintf(outfile,
							"%s value;\n"
							"    nsresult __result = inner.Set%c%s(value);\n",
							IDL_NATIVE(IDL_NODE_UP(type_spec)).user_type,
							toupper(*attrname), attrname + 1);
				}
				else if (UP_IS_AGGREGATE(type_spec)) {
					fprintf(outfile,
							"%s value;\n"
							"    nsresult __result = inner.Set%c%s(value);\n",
							IDL_IDENT(type_spec).str,
							toupper(*attrname), attrname + 1);
				} else {
					fprintf(outfile,
							"%s value;\n"
							"    nsresult __result = inner.Set%c%s(value);\n",
							IDL_IDENT(type_spec).str,
							toupper(*attrname), attrname + 1);
				}
			}
			break;
		  default:
		    fprintf(outfile,
					"nsresult __result = inner.Set%c%s(a%c%s);\n",
					toupper(*attrname), attrname + 1,
					toupper(*attrname), attrname + 1);
		    break;
		}

		fputs("    CheckException(__result);\n", outfile);
	}

	fputs("  }\n", outfile);
    return TRUE;
}

static gboolean
attr_dcl(TreeState *state)
{
    GSList *doc_comments;

    if (!verify_attribute_declaration(state->tree))
        return FALSE;

    doc_comments =
        IDL_IDENT(IDL_LIST(IDL_ATTR_DCL
                           (state->tree).simple_declarations).data).comments;

    if (doc_comments != NULL) {
        write_indent(state->file);
        printlist(state->file, doc_comments);
    }

    /*
     * XXX lists of attributes with the same type, e.g.
     * attribute string foo, bar sil;
     * are legal IDL... but we don't do anything with 'em.
     */
    if (IDL_LIST(IDL_ATTR_DCL(state->tree).simple_declarations).next != NULL) {
        XPIDL_WARNING((state->tree, IDL_WARNING1,
                       "multiple attributes in a single declaration aren't "
                       "currently supported by xpidl"));
    }

    xpidl_write_comment(state, 2);

    write_indent(state->file);
    if (!write_attr_accessor(state->tree, state->file, TRUE, AS_DECL, NULL))
        return FALSE;

    if (!IDL_ATTR_DCL(state->tree).f_readonly) {
        write_indent(state->file);
        if (!write_attr_accessor(state->tree, state->file, FALSE, AS_DECL, NULL))
            return FALSE;
    }
    fputc('\n', state->file);

    return TRUE;
}

static gboolean
do_enum(TreeState *state)
{
    IDL_tree_error(state->tree, "enums not supported, "
                   "see http://bugzilla.mozilla.org/show_bug.cgi?id=8781");
    return FALSE;
}

static gboolean
do_const_dcl(TreeState *state)
{
    struct _IDL_CONST_DCL *dcl = &IDL_CONST_DCL(state->tree);
    const char *name = IDL_IDENT(dcl->ident).str;
    gboolean is_signed;
    GSList *doc_comments = IDL_IDENT(dcl->ident).comments;
    IDL_tree real_type;
    const char *const_format;

    if (!verify_const_declaration(state->tree))
        return FALSE;

    if (doc_comments != NULL) {
        write_indent(state->file);
        printlist(state->file, doc_comments);
    }

    /* Could be a typedef; try to map it to the real type. */
    real_type = find_underlying_type(dcl->const_type);
    real_type = real_type ? real_type : dcl->const_type;
    is_signed = IDL_TYPE_INTEGER(real_type).f_signed;

    const_format = is_signed ? "%" IDL_LL "d" : "%" IDL_LL "uU";
    write_indent(state->file);
    fprintf(state->file, "enum { %s = ", name);
    fprintf(state->file, const_format, IDL_INTEGER(dcl->const_exp).value);
    fprintf(state->file, " }\n\n");

    return TRUE;
}

static gboolean
do_typedef(TreeState *state)
{	
#if 0
    IDL_tree type = IDL_TYPE_DCL(state->tree).type_spec;
    IDL_tree dcls = IDL_TYPE_DCL(state->tree).dcls;
    IDL_tree complex;
    GSList *doc_comments;

    if (IDL_NODE_TYPE(type) == IDLN_TYPE_SEQUENCE) {
        XPIDL_WARNING((state->tree, IDL_WARNING1,
                       "sequences not supported, ignored"));
    } else {
        if (IDL_NODE_TYPE(complex = IDL_LIST(dcls).data) == IDLN_TYPE_ARRAY) {
            IDL_tree dim = IDL_TYPE_ARRAY(complex).size_list;
            doc_comments = IDL_IDENT(IDL_TYPE_ARRAY(complex).ident).comments;

            if (doc_comments != NULL)
                printlist(state->file, doc_comments);

            fputs("alias ", state->file);
            if (!write_type(type, FALSE, state->file))
                return FALSE;
            fputs(" ", state->file);

            fprintf(state->file, "%s",
                    IDL_IDENT(IDL_TYPE_ARRAY(complex).ident).str);
            do {
                fputc('[', state->file);
                if (IDL_LIST(dim).data) {
                    fprintf(state->file, "%ld",
                            (long)IDL_INTEGER(IDL_LIST(dim).data).value);
                }
                fputc(']', state->file);
            } while ((dim = IDL_LIST(dim).next) != NULL);
        } else {
            doc_comments = IDL_IDENT(IDL_LIST(dcls).data).comments;

            if (doc_comments != NULL)
                printlist(state->file, doc_comments);

            fputs("alias ", state->file);
            if (!write_type(type, FALSE, state->file))
                return FALSE;
            fputs(" ", state->file);
            fputs(IDL_IDENT(IDL_LIST(dcls).data).str, state->file);
        }
        fputs(";\n\n", state->file);
    }
#endif
    return TRUE;
}

/*
 * param generation:
 * in string foo        -->     nsString *foo
 * out string foo       -->     nsString **foo;
 * inout string foo     -->     nsString **foo;
 */

/* If notype is true, just write the param name. */
static gboolean
write_param(IDL_tree param_tree, FILE *outfile)
{
	char* param_name;
    IDL_tree param_type_spec = IDL_PARAM_DCL(param_tree).param_type_spec;
    gboolean is_in = IDL_PARAM_DCL(param_tree).attr == IDL_PARAM_IN;
    /* in string, wstring, nsid, domstring, utf8string, cstring and 
     * astring any explicitly marked [const] are const 
     */

    if (is_in &&
        (IDL_NODE_TYPE(param_type_spec) == IDLN_TYPE_STRING ||
         IDL_NODE_TYPE(param_type_spec) == IDLN_TYPE_WIDE_STRING ||
         IDL_tree_property_get(IDL_PARAM_DCL(param_tree).simple_declarator,
                               "const") ||
         IDL_tree_property_get(param_type_spec, "nsid") ||
         IDL_tree_property_get(param_type_spec, "domstring")  ||
         IDL_tree_property_get(param_type_spec, "utf8string") ||
         IDL_tree_property_get(param_type_spec, "cstring")    ||
         IDL_tree_property_get(param_type_spec, "astring"))) {
        fputs("", outfile);
    }
    else if (IDL_PARAM_DCL(param_tree).attr == IDL_PARAM_OUT &&
             IDL_tree_property_get(IDL_PARAM_DCL(param_tree).simple_declarator, 
                                   "shared")) {
        /*fputs("out ", outfile);*/
    }
	
    /* out and inout params get a bonus '*' (unless this is type that has a 
     * 'dipper' class that is passed in to receive 'out' data) 
     */
    if (IDL_PARAM_DCL(param_tree).attr != IDL_PARAM_IN &&
        !DIPPER_TYPE(param_type_spec)) {
        fputs("out ", outfile);
    }

    if (!write_type(param_type_spec, !is_in, outfile))
        return FALSE;

    /* unless the type ended in a *, add a space */
    if (!STARRED_TYPE(param_type_spec))
        fputc(' ', outfile);

    /* arrays get a bonus * too */
    /* XXX Should this be a leading '*' or a trailing "[]" ?*/
    if (IDL_tree_property_get(IDL_PARAM_DCL(param_tree).simple_declarator,
                              "array"))
        fputs("*", outfile);

	param_name = IDL_IDENT(IDL_PARAM_DCL(param_tree).simple_declarator).str;
	if (strcmp(param_name, "version") == 0 ||
        strcmp(param_name, "scope") == 0 ||
        strcmp(param_name, "body") == 0)
		fprintf(outfile, "%s_", param_name);
	else
    	fputs(param_name, outfile);

    return TRUE;
}


static gboolean
write_param_conversion(IDL_tree param_tree, FILE *outfile, int convall, int isout)
{
	const char* pname;
	IDL_tree type_tree;
	IDL_tree param_type_spec;
	char param_name[512] = {0};

	gboolean sign;
    param_type_spec = IDL_PARAM_DCL(param_tree).param_type_spec;
	type_tree = param_type_spec;

	pname =
		IDL_IDENT(IDL_PARAM_DCL(param_tree).simple_declarator).str;

	if (strcmp(pname, "version") == 0 ||
        strcmp(pname, "scope") == 0 ||
        strcmp(pname, "body") == 0)
		sprintf(param_name, "%s_", pname);
	else
    	strcpy(param_name, pname);

    switch (IDL_NODE_TYPE(param_type_spec)) {
	  case IDLN_TYPE_INTEGER: {
	    if (!convall) return TRUE;
		sign = IDL_TYPE_INTEGER(type_tree).f_signed;
		switch (IDL_TYPE_INTEGER(type_tree).f_type) {
		  case IDL_INTEGER_TYPE_SHORT:
			fputs(sign ? "    PRInt16" : "    PRUint16", outfile);
			break;
		  case IDL_INTEGER_TYPE_LONG:
			fputs(sign ? "    PRInt32" : "    PRUint32", outfile);
			break;
		  case IDL_INTEGER_TYPE_LONGLONG:
			fputs(sign ? "    PRInt64" : "    PRUint64", outfile);
			break;
		  default:
			g_error("Unknown integer type %d\n",
					IDL_TYPE_INTEGER(type_tree).f_type);
			return FALSE;
		}
		break;
	  }
	  case IDLN_TYPE_CHAR:
	    if (!convall) return TRUE;
		fputs("    char", outfile);
		break;
	  case IDLN_TYPE_WIDE_CHAR:
	    if (!convall) return TRUE;
		fputs("    PRUnichar", outfile); /* wchar_t? */
		break;
	  case IDLN_TYPE_WIDE_STRING:
	    if (!convall) return TRUE;
		fputs("    PRUnichar*", outfile);
		break;
	  case IDLN_TYPE_STRING:
	    if (!convall) return TRUE;
		fputs("    char*", outfile);
		break;
	  case IDLN_TYPE_BOOLEAN:
	    if (!convall) return TRUE;
		fputs("    PRBool", outfile);
		break;
	  case IDLN_TYPE_OCTET:
	    if (!convall) return TRUE;
		fputs("    PRUint8", outfile);
		break;
	  case IDLN_TYPE_FLOAT:
	    if (!convall) return TRUE;
		switch (IDL_TYPE_FLOAT(type_tree).f_type) {
		  case IDL_FLOAT_TYPE_FLOAT:
			fputs("    float", outfile);
			break;
		  case IDL_FLOAT_TYPE_DOUBLE:
			fputs("    double", outfile);
			break;
		  /* XXX 'long double' just ignored, or what? */
		  default:
			fprintf(outfile, "unknown_type_%d", IDL_NODE_TYPE(type_tree));
			break;
		}
		break;
      case IDLN_IDENT:
        if (UP_IS_NATIVE(param_type_spec)) {
			if (isout) {
				if (IDL_tree_property_get(param_type_spec, "domstring") ||
					IDL_tree_property_get(param_type_spec, "astring")) {
					fprintf(outfile,
							"    scope auto _%s = new AString;\n",
							pname);
				} else if (IDL_tree_property_get(param_type_spec, "utf8string")) {
					fprintf(outfile,
							"    scope auto _%s = new ACString;\n",
							pname);
				} else if (IDL_tree_property_get(param_type_spec, "cstring")) {
					fprintf(outfile,
							"    scope auto _%s = new ACString;\n",
							pname);
				} else {
					char* ptype;
					if (!convall) return TRUE;

					ptype = IDL_NATIVE(IDL_NODE_UP(param_type_spec)).user_type;
					if (strncmp(ptype, "struct ", 7) == 0)
						ptype += 7;
					else if(strncmp(ptype, "union ", 6) == 0)
						ptype += 6;

                	fputs(ptype, outfile);
                    if (IDL_tree_property_get(param_type_spec, "ptr")) {
                         fputs(" *", outfile);
                    } else if (IDL_tree_property_get(param_type_spec, "ref")) {
                         fputs(" *", outfile);
                    }

					fprintf(outfile,
							" _%s;\n",
							pname);
				}
			} else {
				if (IDL_tree_property_get(param_type_spec, "domstring") ||
					IDL_tree_property_get(param_type_spec, "astring")) {
					fprintf(outfile,
							"    scope auto _%s = new AString(%s);\n",
							pname, param_name);
				} else if (IDL_tree_property_get(param_type_spec, "utf8string")) {
					fprintf(outfile,
							"    scope auto _%s = new ACString(%s);\n",
							pname, param_name);
				} else if (IDL_tree_property_get(param_type_spec, "cstring")) {
					fprintf(outfile,
							"    scope auto _%s = new ACString(%s);\n",
							pname, param_name);
				}
			}
		} else {
			if (convall || isout) {
				if (UP_IS_AGGREGATE(param_type_spec)) {
					fprintf(outfile,
							"    %s _%s;\n",
							IDL_IDENT(param_type_spec).str,
							pname);
				} else {
					if (convall) {
						fprintf(outfile,
								"    %s _%s;\n",
								IDL_IDENT(param_type_spec).str,
								pname);
					}
				}
			}
		}
		break;
	  default:
	    break;
    }

	if (convall && IDL_NODE_TYPE(param_type_spec) != IDLN_IDENT) {
		fprintf(outfile, " _%s;\n", pname);
	}

    return TRUE;
}


static gboolean
write_param_conversion_post(IDL_tree param_tree, FILE *outfile)
{
	const char* pname;
	IDL_tree type_tree;
	IDL_tree param_type_spec;
	char param_name[512] = {0};

	gboolean sign;
    param_type_spec = IDL_PARAM_DCL(param_tree).param_type_spec;
	type_tree = param_type_spec;

	pname =
		IDL_IDENT(IDL_PARAM_DCL(param_tree).simple_declarator).str;

	if (strcmp(pname, "version") == 0 ||
        strcmp(pname, "scope") == 0 ||
        strcmp(pname, "body") == 0)
		sprintf(param_name, "%s_", pname);
	else
    	strcpy(param_name, pname);

    switch (IDL_NODE_TYPE(param_type_spec)) {
      case IDLN_IDENT:
        if (UP_IS_NATIVE(param_type_spec)) {
			if (IDL_tree_property_get(param_type_spec, "domstring") ||
				IDL_tree_property_get(param_type_spec, "astring")) {
				fprintf(outfile,
						"\n    %s = _%s.GetString();",
						param_name,
						pname);
			} else if (IDL_tree_property_get(param_type_spec, "utf8string")) {
				fprintf(outfile,
						"\n    %s = _%s.GetString();",
						param_name,
						pname);
			} else if (IDL_tree_property_get(param_type_spec, "cstring")) {
				fprintf(outfile,
						"\n    %s = _%s.GetString();",
						param_name,
						pname);
			}
		} else {
			if (UP_IS_AGGREGATE(param_type_spec)) {
				fprintf(outfile,
						"\n    %s = _%s ? new %sD(_%s) : null;",
						param_name,
						pname,
						IDL_IDENT(param_type_spec).str,
						pname);
			}
		}
		break;
	  default:
	    break;
    }

    return TRUE;
}

static gboolean
write_param_call(IDL_tree param_tree, FILE *outfile, int isout, int retval)
{
	char param_name[512] = {0};

	gboolean sign;
    IDL_tree param_type_spec = IDL_PARAM_DCL(param_tree).param_type_spec;

	const char* pname =
		IDL_IDENT(IDL_PARAM_DCL(param_tree).simple_declarator).str;

	if (strcmp(pname, "version") == 0 ||
        strcmp(pname, "scope") == 0 ||
        strcmp(pname, "body") == 0)
		sprintf(param_name, "%s_", pname);
	else
    	strcpy(param_name, pname);

    switch (IDL_NODE_TYPE(param_type_spec)) {
      case IDLN_IDENT:
        if (UP_IS_NATIVE(param_type_spec)) {
            if (IDL_tree_property_get(param_type_spec, "domstring") ||
                IDL_tree_property_get(param_type_spec, "astring")) {
                fprintf(outfile,
				        "cast(nsAString*)_%s",
						pname);
            } else if (IDL_tree_property_get(param_type_spec, "utf8string")) {
                fprintf(outfile,
						"cast(nsACString*)_%s",
						pname);
            } else if (IDL_tree_property_get(param_type_spec, "cstring")) {
                fprintf(outfile,
						"cast(nsACString*)_%s",
						pname);
            } else {
				if (isout)
					if (UP_IS_AGGREGATE(param_type_spec))
						fprintf(outfile, "&_%s", pname);
					else if (retval)
						fprintf(outfile, "&_%s", pname);
					else
						fprintf(outfile, "&%s", pname);
				else
					fprintf(outfile, "%s", param_name);
				/*
                fputs(IDL_NATIVE(IDL_NODE_UP(param_type_spec)).user_type, outfile);
				if (IDL_tree_property_get(param_type_spec, "ptr")) {
					fputs(" *", outfile);
				} else if (IDL_tree_property_get(param_type_spec, "ref")) {
					fputs(" *", outfile);
				}*/
			}
        }
		else {
			char* type = IDL_IDENT(param_type_spec).str;
		  if(isout) {
			  if (UP_IS_AGGREGATE(param_type_spec))
				fprintf(outfile, "&_%s", pname);
			else if (retval)
				fprintf(outfile, "&_%s", pname);
			else
				fprintf(outfile, "&%s", pname);
		  } else {
			if (UP_IS_AGGREGATE(param_type_spec)) {
				fprintf(outfile,
						"%s ? cast(%s)%s : null",
						param_name,
						type,
						param_name);
			} else {
				fprintf(outfile, "%s", param_name);
			}
		  }
		}
        break;
	  default:
	  	if (isout)
			if (retval)
				fprintf(outfile, "&_%s", pname);
			else
				fprintf(outfile, "&%s", pname);
		else
			fprintf(outfile, "%s", param_name);
    }

    return TRUE;
}



static gboolean
write_return_conversion(IDL_tree param_tree, FILE *outfile)
{
    IDL_tree param_type_spec = IDL_PARAM_DCL(param_tree).param_type_spec;
	const char* param_name =
		IDL_IDENT(IDL_PARAM_DCL(param_tree).simple_declarator).str;

    switch (IDL_NODE_TYPE(param_type_spec)) {
      case IDLN_IDENT:
        if (UP_IS_NATIVE(param_type_spec)) {
            if (IDL_tree_property_get(param_type_spec, "domstring") ||
                IDL_tree_property_get(param_type_spec, "astring")) {
                fprintf(outfile,
				        "    return _%s.GetString();",
						param_name);
            } else if (IDL_tree_property_get(param_type_spec, "utf8string")) {
                fprintf(outfile,
						"    return _%s.GetString();",
						param_name);
            } else if (IDL_tree_property_get(param_type_spec, "cstring")) {
                fprintf(outfile,
						"    return _%s.GetString();",
						param_name);
            } else {
				fprintf(outfile, "    return _%s;", param_name);
			}
		} else {
			if (UP_IS_AGGREGATE(param_type_spec)) {
				fprintf(outfile,
						"    return new %sD(_%s);",
						IDL_IDENT(param_type_spec).str,
						param_name);
			} else {
				fprintf(outfile,
						"    return _%s;",
						param_name);
			}
		}
		break;
	  default:
	    fprintf(outfile,
				"    return _%s;",
				param_name);
	    break;
    }

    return TRUE;
}




/*
 * A forward declaration, usually an interface.
 */
static gboolean
forward_dcl(TreeState *state)
{
    IDL_tree iface = state->tree;
    const char *className = IDL_IDENT(IDL_FORWARD_DCL(iface).ident).str;

    if (!className)
        return FALSE;


	if (strcmp(className, "nsIMsgDBViewCommandUpdater") == 0)
		fprintf(state->file, "public import mozilla.xpcom.nsIMsgDBView;\n\nimport mozilla.dxpcom.nsIMsgDBViewD;\n\n");
	else if(strcmp(className, "nsIContextMenuInfo") == 0)
		fprintf(state->file, "public import mozilla.xpcom.nsIContextMenuListener2;\n\nimport mozilla.dxpcom.nsIContextMenuListener2D;\n\n");
	else if(strcmp(className, "nsISOAPEncodingRegistry") == 0)
		fprintf(state->file, "public import mozilla.xpcom.nsISOAPEncoding;\n\nimport mozilla.dxpcom.nsISOAPEncodingD;\n\n");
	else if(strcmp(className, "nsIAutoCompleteItem") == 0)
		fprintf(state->file, "public import mozilla.xpcom.nsIAutoCompleteResults;\n\nimport mozilla.dxpcom.nsIAutoCompleteResultsD;\n\n");
	else if(strcmp(className, "nsIFeedResultListener") == 0)
		fprintf(state->file, "public import mozilla.xpcom.nsIFeedListener;\n\nimport mozilla.dxpcom.nsIFeedListenerD;\n\n");
	else if(strcmp(className, "nsIAbDirectoryProperties") == 0)
		fprintf(state->file, "public import mozilla.xpcom.nsIAbDirectory;\n\nimport mozilla.dxpcom.nsIAbDirectoryD;\n\n");
	else if(strcmp(className, "nsIMutableArray") == 0)
		fprintf(state->file, "public import mozilla.xpcom.nsIArray;\n\nimport mozilla.dxpcom.nsIArrayD;\n\n");
	else if(strncmp(className, "nsISchema", 9) == 0)
			fprintf(state->file, "public import mozilla.xpcom.nsISchema;\n\nimport mozilla.dxpcom.nsISchemaD;\n\n");
	else if(strncmp(className, "nsIWebServiceProxy", 18) == 0)
			fprintf(state->file, "public import mozilla.xpcom.nsIWebServiceProxy;\n\nimport mozilla.dxpcom.nsIWebServiceProxyD;\n\n");
	else if (strcmp(className, "nsIWSDLBinding") == 0 ||
			strcmp(className, "nsIWSDLPort") == 0 ||
			strcmp(className, "nsIWSDLOperation") == 0 ||
			strcmp(className, "nsIWSDLMessage") == 0 ||
			strcmp(className, "nsIWSDLPart") == 0)
		fprintf(state->file, "public import mozilla.xpcom.nsIWSDL;\n\nimport mozilla.dxpcom.nsIWSDLD;\n\n");
	else if (strcmp(className, "nsIAutoCompleteObserver") == 0)
		fprintf(state->file, "public import mozilla.xpcom.nsIAutoCompleteSearch;\n\nimport mozilla.dxpcom.nsIAutoCompleteSearchD;\n\n");
	else if (strcmp(className, "nsITreeColumn") == 0)
		fprintf(state->file, "public import mozilla.xpcom.nsITreeColumns;\n\nimport mozilla.dxpcom.nsITreeColumnsD;\n\n");
	else if (strcmp(className, "nsIUTF8StringEnumerator") == 0)
		fprintf(state->file, "public import mozilla.xpcom.nsIStringEnumerator;\n\nimport mozilla.dxpcom.nsIStringEnumeratorD;\n\n");
	else if (strcmp(className, "nsIMsgDBHdr") == 0)
		fprintf(state->file, "public import mozilla.xpcom.nsIMsgHdr;\n\nimport mozilla.dxpcom.nsIMsgHdrD;\n\n");
	else if (strcmp(className, "nsIMsgRetentionSettings") == 0 || strcmp(className, "nsIMsgDownloadSettings") == 0)
		fprintf(state->file, "public import mozilla.xpcom.nsIMsgDatabase;\n\nimport mozilla.dxpcom.nsIMsgDatabaseD;\n\n");
	else if (strcmp(className, "nsITransportEventSink") == 0)
		fprintf(state->file, "public import mozilla.xpcom.nsITransport;\n\nimport mozilla.dxpcom.nsITransportD;\n\n");
	else if (strcmp(className, "nsIDOMXULSelectControlElement") == 0)
		fprintf(state->file, "public import mozilla.xpcom.nsIDOMXULSelectCntrlEl;\n\nimport mozilla.dxpcom.nsIDOMXULSelectCntrlElD;\n\n");
	else if (strcmp(className, "nsIDOMXULSelectControlItemElement") == 0)
		fprintf(state->file, "public import mozilla.xpcom.nsIDOMXULSelectCntrlEl;\n\nimport mozilla.dxpcom.nsIDOMXULSelectCntrlElD;\n\n");
	else if (strcmp(className, "nsIDOMXULMultiSelectControlElement") == 0)
		fprintf(state->file, "public import mozilla.xpcom.nsIDOMXULMultSelectCntrlEl;\n\nimport mozilla.dxpcom.nsIDOMXULMultSelectCntrlElD;\n\n");
	else if (strcmp(className, "nsIOutputStreamCallback") == 0)
		fprintf(state->file, "public import mozilla.xpcom.nsIAsyncOutputStream;\n\nimport mozilla.dxpcom.nsIAsyncOutputStreamD;\n\n");
	else if (strcmp(className, "nsIInputStreamCallback") == 0)
		fprintf(state->file, "public import mozilla.xpcom.nsIAsyncInputStream;\n\nimport mozilla.dxpcom.nsIAsyncInputStreamD;\n\n");
	else if (strcmp(className, "nsISMimeVerificationListener") == 0)
		fprintf(state->file, "public import mozilla.xpcom.nsICMSMessage2;\n\nimport mozilla.dxpcom.nsICMSMessage2D;\n\n");
	else if (strcmp(className, "nsIDOMSVGAnimatedEnumeration") == 0)
		fprintf(state->file, "public import mozilla.xpcom.nsIDOMSVGAnimatedEnum;\n\nimport mozilla.dxpcom.nsIDOMSVGAnimatedEnumD;\n\n");
	else if (strcmp(className, "nsIXPointerResult") == 0)
		fprintf(state->file, "public import mozilla.xpcom.nsIXPointer;\n\nimport mozilla.dxpcom.nsIXPointerD;\n\n");
	else if (strcmp(className, "nsIDOMXULTextBoxElement") == 0)
		fprintf(state->file, "public import mozilla.xpcom.nsIDOMXULTextboxElement;\n\nimport mozilla.dxpcom.nsIDOMXULTextboxElementD;\n\n");
	else if (strcmp(className, "nsISVGLinearGradient") == 0 || strcmp(className, "nsISVGRadialGradient") == 0)
		fprintf(state->file, "public import mozilla.xpcom.nsISVGGradient;\n\nimport mozilla.dxpcom.nsISVGGradientD;\n\n");
	else if (strcmp(className, "nsIXPCNativeCallContext") == 0)
		fprintf(state->file, "public import mozilla.xpcom.nsIXPConnect;\n\nimport mozilla.dxpcom.nsIXPConnectD;\n\n");
	else if (strcmp(className, "nsIHelperAppLauncher") == 0)
		fprintf(state->file, "public import mozilla.xpcom.nsIExternalHelperAppService;\n\nimport mozilla.dxpcom.nsIExternalHelperAppServiceD;\n\n");
	else if (strcmp(className, "nsIDOMSVGAnimatedPreserveAspectRatio") == 0)
		fprintf(state->file, "public import mozilla.xpcom.nsIDOMSVGAnimPresAspRatio;\n\nimport mozilla.dxpcom.nsIDOMSVGAnimPresAspRatioD;\n\n");
	else if (strcmp(className, "nsIXPConnectWrappedNative") == 0)
		fprintf(state->file, "public import mozilla.xpcom.nsIXPConnect;\n\nimport mozilla.dxpcom.nsIXPConnectD;\n\n");
	else if (strcmp(className, "nsIDOMSVGPreserveAspectRatio") == 0)
		fprintf(state->file, "public import mozilla.xpcom.nsIDOMSVGPresAspectRatio;\n\nimport mozilla.dxpcom.nsIDOMSVGPresAspectRatioD;\n\n");
	else if (strcmp(className, "nsITimerCallback") == 0)
		fprintf(state->file, "public import mozilla.xpcom.nsITimer;\n\nimport mozilla.dxpcom.nsITimerD;\n\n");
	else if (strcmp(className, "nsIDOMSVGAnimatedTransformList") == 0)
		fprintf(state->file, "public import mozilla.xpcom.nsIDOMSVGAnimTransformList;\n\nimport mozilla.dxpcom.nsIDOMSVGAnimTransformListD;\n\n");
	else if (strcmp(className, "nsIProfileLock") == 0)
		fprintf(state->file, "public import mozilla.xpcom.nsIToolkitProfile;\n\nimport mozilla.dxpcom.nsIToolkitProfileD;\n\n");
	else if (strcmp(className, "nsIServerSocketListener") == 0)
		fprintf(state->file, "public import mozilla.xpcom.nsIServerSocket;\n\nimport mozilla.dxpcom.nsIServerSocketD;\n\n");
	else if (strcmp(className, "nsIZipReaderCache") == 0)
		fprintf(state->file, "public import mozilla.xpcom.nsIZipReader;\n\nimport mozilla.dxpcom.nsIZipReaderD;\n\n");
	else if (strcmp(className, "nsIFastLoadReadControl") == 0)
		fprintf(state->file, "public import mozilla.xpcom.nsIFastLoadFileControl;\n\nimport mozilla.dxpcom.nsIFastLoadFileControlD;\n\n");
	else if (strcmp(className, "nsIWSDLLoadListener") == 0)
		fprintf(state->file, "public import mozilla.xpcom.nsIWSDLLoader;\n\nimport mozilla.dxpcom.nsIWSDLLoaderD;\n\n");
	else if (strcmp(className, "nsIDownloadObserver") == 0)
		fprintf(state->file, "public import mozilla.xpcom.nsIDownloader;\n\nimport mozilla.dxpcom.nsIDownloaderD;\n\n");
	else if (strcmp(className, "nsICertVerificationListener") == 0)
		fprintf(state->file, "public import mozilla.xpcom.nsIX509Cert3;\n\nimport mozilla.dxpcom.nsIX509Cert3D;\n\n");
	else if (strcmp(className, "nsIClipboardImage") == 0)
		fprintf(state->file, "public import mozilla.xpcom.nsIClipboard;\n\nimport mozilla.dxpcom.nsIClipboardD;\n\n");
	else if (strcmp(className, "nsISupportsString") == 0)
		fprintf(state->file, "public import mozilla.xpcom.nsISupportsPrimitives;\n\nimport mozilla.dxpcom.nsISupportsPrimitivesD;\n\n");
	else if (strncmp(className, "nsIDOMSVGPathSeg", 16) == 0 && strcmp(className, "nsIDOMSVGPathSegList") != 0)
		fprintf(state->file, "public import mozilla.xpcom.nsIDOMSVGPathSeg;\n\nimport mozilla.dxpcom.nsIDOMSVGPathSegD;\n\n");
	else if (strcmp(className, "nsIProfileStartup") == 0)
		fprintf(state->file, "public import mozilla.xpcom.nsIProfileMigrator;\n\nimport mozilla.dxpcom.nsIProfileMigratorD;\n\n");
	else if (strncmp(className, "nsIMicrosummary", 15) == 0)
		fprintf(state->file, "public import mozilla.xpcom.nsIMicrosummaryService;\n\nimport mozilla.dxpcom.nsIMicrosummaryServiceD;\n\n");
	else if (strncmp(className, "jsd", 3) == 0)
		fprintf(state->file, "public import mozilla.xpcom.jsdIDebuggerService;\n\nimport mozilla.dxpcom.jsdIDebuggerServiceD;\n\n");
	else if (strncmp(className, "nsINavHistory", 13) == 0)
		fprintf(state->file, "public import mozilla.xpcom.nsINavHistoryService;\n\nimport mozilla.dxpcom.nsINavHistoryServiceD;\n\n");
	else if (strcmp(className, "nsICacheDeviceInfo") != 0 &&
		strcmp(className, "nsICacheEntryInfo") != 0 &&
		strcmp(className, "nsAString") != 0 &&
		strcmp(className, "nsACString") != 0 &&
		strcmp(className, "nsIUnicodeEncoder") != 0 &&
		strcmp(className, "nsIFrameSelection") != 0 &&
		strcmp(className, "nsIScriptGlobalObject") != 0 &&
		strcmp(className, "nsIScriptContext") != 0 &&
		strcmp(className, "nsISAXEntityResolver") != 0 &&
		strcmp(className, "nsIScrollbarMediator") != 0 &&
		strcmp(className, "nsISocketEventSink") != 0 &&
		strcmp(className, "nsIEditingShell") != 0 &&
		strcmp(className, "nsISecureEnv") != 0 &&
		strcmp(className, "nsIWidget") != 0 &&
		strcmp(className, "nsIWordBreaker") != 0 &&
		strcmp(className, "nsIJVMPlugin") != 0 &&
		strcmp(className, "nsIUnicodeDecoder") != 0 &&
		strcmp(className, "nsIServiceManagerObsolete") != 0 &&
		strcmp(className, "nsIRenderingContext") != 0 &&
		strcmp(className, "nsSVGPathData") != 0 &&
		strcmp(className, "nsPresContext") != 0 &&
		strcmp(className, "nsIAccessibleEventListener") != 0 &&
		strcmp(className, "nsIChannelSecurityInfo") != 0 &&
		strcmp(className, "nsIScriptElement") != 0 &&
		strcmp(className, "nsIDocument") != 0 &&
		strcmp(className, "XPathException") != 0 &&
		strcmp(className, "nsILayoutHistoryState") != 0 &&
		strcmp(className, "nsICacheMetaDataVisitor") != 0 &&
		strcmp(className, "nsIFilePath") != 0 &&
		strcmp(className, "LSException") != 0 &&
		strcmp(className, "nsIOFileStream") != 0 &&
		strcmp(className, "nsMsgResultElement") != 0 &&
		strcmp(className, "nsOutputStream") != 0 &&
		strcmp(className, "nsIContent") != 0 &&
		strcmp(className, "nsIMAPNamespace") != 0 &&
		strcmp(className, "nsIImapHostSessionList") != 0 &&
		strncmp(className, "nsIMdb", 6) != 0 &&
		strcmp(className, "nsIPresShell") != 0 &&
		strcmp(className, "nsIMsgHeaderSink") != 0 &&
		strcmp(className, "nsObjectFrame") != 0 &&
		strcmp(className, "nsIFrame") != 0)
	{
		fprintf(state->file, "public import mozilla.xpcom.%s;\n\n", className);
		fprintf(state->file, "public import mozilla.dxpcom.%sD;\n\n", className);
	}

	return TRUE;
}

/*
 * Shared between the interface class declaration and the NS_DECL_IFOO macro
 * provided to aid declaration of implementation classes.  
 * mode...
 *  AS_DECL writes 'NS_IMETHOD foo(string bar, long sil)'
 *  AS_IMPL writes 'NS_IMETHODIMP className::foo(string bar, long sil)'
 *  AS_CALL writes 'foo(bar, sil)'
 */
static gboolean
write_method_signature(IDL_tree method_tree, FILE *outfile,
                       const char *className)
{
    struct _IDL_OP_DCL *op = &IDL_OP_DCL(method_tree);
    gboolean no_generated_args = TRUE;
    gboolean op_notxpcom =
        (IDL_tree_property_get(op->ident, "notxpcom") != NULL);
    const char *name;
    IDL_tree iter;

	if (!write_type(op->op_type_spec, FALSE, outfile))
		return FALSE;
	fputc(' ', outfile);

    name = IDL_IDENT(op->ident).str;
    fprintf(outfile, "%c%s(", toupper(*name), name + 1);
    for (iter = op->parameter_dcls; iter; iter = IDL_LIST(iter).next) {
		if (!write_param(IDL_LIST(iter).data, outfile))
			return FALSE;
        if ((IDL_LIST(iter).next))
            fputs(", ", outfile);
        no_generated_args = FALSE;
    }
    /* varargs go last */
    if (op->f_varargs) {
        fputs("nsVarArgs *", outfile);
        fputs("_varargs", outfile);
        no_generated_args = FALSE;
    }

    /*
     * If generated method has no arguments, output 'void' to avoid C legacy
     * behavior of disabling type checking.
     */
    if (no_generated_args) {
        fputs("", outfile);
    }

    fputc(')', outfile);

    return TRUE;
}



static gboolean
write_method_params_convertion(IDL_tree method_tree, FILE *outfile,
                       const char *className)
{
    struct _IDL_OP_DCL *op = &IDL_OP_DCL(method_tree);
    gboolean no_generated_args = TRUE;
    gboolean op_notxpcom =
        (IDL_tree_property_get(op->ident, "notxpcom") != NULL);
    IDL_tree iter;

    for (iter = op->parameter_dcls; iter; iter = IDL_LIST(iter).next) {
		int isout = 0;
		if (IDL_PARAM_DCL(IDL_LIST(iter).data).attr != IDL_PARAM_IN)
			isout = 1;
		
		if (!write_param_conversion(IDL_LIST(iter).data, outfile, 0, isout))
			return FALSE;
		continue;
    }

    return TRUE;
}


static gboolean
write_method_params_convertion_post(IDL_tree method_tree, FILE *outfile,
                       const char *className)
{
    struct _IDL_OP_DCL *op = &IDL_OP_DCL(method_tree);
    gboolean no_generated_args = TRUE;
    gboolean op_notxpcom =
        (IDL_tree_property_get(op->ident, "notxpcom") != NULL);
    IDL_tree iter;

    for (iter = op->parameter_dcls; iter; iter = IDL_LIST(iter).next) {
		int isout = 0;
		if (IDL_PARAM_DCL(IDL_LIST(iter).data).attr != IDL_PARAM_IN)
			isout = 1;
		
		if (isout)
			if (!write_param_conversion_post(IDL_LIST(iter).data, outfile))
				return FALSE;
    }

    return TRUE;
}


static gboolean
write_method_call(IDL_tree method_tree, FILE *outfile,
                       const char *className)
{
    struct _IDL_OP_DCL *op = &IDL_OP_DCL(method_tree);
    gboolean no_generated_args = TRUE;
    gboolean op_notxpcom =
        (IDL_tree_property_get(op->ident, "notxpcom") != NULL);
    const char *name;
    IDL_tree iter;
	IDL_tree fake_param = NULL;
	
	if (!write_method_params_convertion(method_tree, outfile, NULL))
		return FALSE;
	
    if (op->op_type_spec) {
		if (!op_notxpcom) {
			fake_param = IDL_param_dcl_new(IDL_PARAM_IN,
													op->op_type_spec,
													IDL_ident_new("retval"));
			if (!fake_param)
				return FALSE;
			if (!write_param_conversion(fake_param, outfile, 1, 1))
				return FALSE;
		} else {
			fputs("    ", outfile);
			if (!write_type(op->op_type_spec, FALSE, outfile))
				return FALSE;
			fputs(" _retval;\n", outfile);
		}
    }

    name = IDL_IDENT(op->ident).str;
			
	if (op_notxpcom) {
		if (op->op_type_spec) {
			fprintf(outfile, "    _retval = inner.%c%s(", toupper(*name), name + 1);
		} else {
			fprintf(outfile, "  inner.%c%s(", toupper(*name), name + 1);
		}
	} else {
		fprintf(outfile, "    nsresult __result = inner.%c%s(", toupper(*name), name + 1);
	}

    for (iter = op->parameter_dcls; iter; iter = IDL_LIST(iter).next) {
		int isout = 0;
		if (IDL_PARAM_DCL(IDL_LIST(iter).data).attr != IDL_PARAM_IN)
			isout = 1;
		
        write_param_call(IDL_LIST(iter).data, outfile, isout, 0);
		
        if ((IDL_LIST(iter).next ||
             (!op_notxpcom && op->op_type_spec) || op->f_varargs))
            fputs(", ", outfile);
        no_generated_args = FALSE;
    }

    if (op->op_type_spec && !op_notxpcom) {
		if (!write_param_call(fake_param, outfile, 1, 1))
			return FALSE;
    }

    /* varargs go last */
    if (op->f_varargs) {
        fputs("nsVarArgs *", outfile);
        fputs("_varargs", outfile);
        no_generated_args = FALSE;
    }

    /*
     * If generated method has no arguments, output 'void' to avoid C legacy
     * behavior of disabling type checking.
     */
    if (no_generated_args) {
        fputs("", outfile);
    }

    fputs(");\n", outfile);
	
	if (!op_notxpcom) {
		fprintf(outfile, "    CheckException(__result);");
	}

	if (!write_method_params_convertion_post(method_tree, outfile, NULL))
		return FALSE;
	
	 if (op->op_type_spec){
		if (op_notxpcom) {
			fputs("\n    return _retval;", outfile);
		} else {
			fputs("\n", outfile);
			write_return_conversion(fake_param, outfile);
		}
	}
	
    return TRUE;
}


/*
 * A method is an `operation', therefore a method decl is an `op dcl'.
 * I blame Elliot.
 */
static gboolean
op_dcl(TreeState *state)
{
    GSList *doc_comments = IDL_IDENT(IDL_OP_DCL(state->tree).ident).comments;

    /*
     * Verify that e.g. non-scriptable methods in [scriptable] interfaces
     * are declared so.  Do this in a separate verification pass?
     */
    if (!verify_method_declaration(state->tree))
        return FALSE;

    if (doc_comments != NULL) {
        write_indent(state->file);
        printlist(state->file, doc_comments);
    }
    xpidl_write_comment(state, 2);

    write_indent(state->file);
    if (!write_method_signature(state->tree, state->file, NULL))
        return FALSE;

	fputs("{\n", state->file);

	/*if (!write_method_params_convertion(state->tree, state->file, NULL))
		return FALSE;
	*/

	if (!write_method_call(state->tree, state->file, NULL))
		return FALSE;
	/*
	if (!write_method_params_convertion_post(state->tree, state->file, NULL))
		return FALSE;
	*/
    fputs("\n  }\n\n", state->file);

    return TRUE;
}

static void
write_codefrag_line(gpointer data, gpointer user_data)
{
    TreeState *state = (TreeState *)user_data;
    const char *line = (const char *)data;
    fputs(line, state->file);
    fputc('\n', state->file);
}

static gboolean
codefrag(TreeState *state)
{
    const char *desc = IDL_CODEFRAG(state->tree).desc;
    GSList *lines = IDL_CODEFRAG(state->tree).lines;
    guint fragment_length;
    
    if (strcmp(desc, "DWRAP") && /* libIDL bug? */ strcmp(desc, "DWRAP\r")) {
        XPIDL_WARNING((state->tree, IDL_WARNING1,
                       "ignoring '%%{%s' escape. "
                       "(Use '%%{C++' to escape verbatim C++ code.)", desc));

        return TRUE;
    }

    /*
     * Emit #file directive to point debuggers back to the original .idl file
     * for the duration of the code fragment.  We look at internal IDL node
     * properties _file, _line to do this; hopefully they won't change.
     *
     * _line seems to refer to the line immediately after the closing %}, so
     * we backtrack to get the proper line for the beginning of the block.
     */
    /*
     * Looks like getting this right means maintaining an accurate line
     * count of everything generated, so we can set the file back to the
     * correct line in the generated file afterwards.  Skipping for now...
     */

    fragment_length = g_slist_length(lines);
/*      fprintf(state->file, "#line %d \"%s\"\n", */
/*              state->tree->_line - fragment_length - 1, */
/*              state->tree->_file); */

    g_slist_foreach(lines, write_codefrag_line, (gpointer)state);

    return TRUE;
}

backend *
xpidl_dwrap_dispatch(void)
{
    static backend result;
    static nodeHandler table[IDLN_LAST];
    static gboolean initialized = FALSE;
    
    result.emit_prolog = header_prolog;
    result.emit_epilog = header_epilog;

    if (!initialized) {
        table[IDLN_LIST] = list;
        table[IDLN_ATTR_DCL] = attr_dcl;
        table[IDLN_OP_DCL] = op_dcl;
        table[IDLN_FORWARD_DCL] = forward_dcl;
        table[IDLN_TYPE_ENUM] = do_enum;
        table[IDLN_INTERFACE] = interface;
        table[IDLN_CODEFRAG] = codefrag;
        table[IDLN_TYPE_DCL] = do_typedef;
        table[IDLN_CONST_DCL] = do_const_dcl;
        table[IDLN_NATIVE] = check_native;
        initialized = TRUE;
    }

    result.dispatch_table = table;
    return &result;
}
