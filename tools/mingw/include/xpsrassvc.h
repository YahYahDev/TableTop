/*** Autogenerated by WIDL 8.2 from include/xpsrassvc.idl - Do not edit ***/

#ifdef _WIN32
#ifndef __REQUIRED_RPCNDR_H_VERSION__
#define __REQUIRED_RPCNDR_H_VERSION__ 475
#endif
#include <rpc.h>
#include <rpcndr.h>
#endif

#ifndef COM_NO_WINDOWS_H
#include <windows.h>
#include <ole2.h>
#endif

#ifndef __xpsrassvc_h__
#define __xpsrassvc_h__

#ifndef __WIDL_INLINE
#if defined(__cplusplus) || defined(_MSC_VER)
#define __WIDL_INLINE inline
#elif defined(__GNUC__)
#define __WIDL_INLINE __inline__
#endif
#endif

/* Forward declarations */

#ifndef __IXpsRasterizerNotificationCallback_FWD_DEFINED__
#define __IXpsRasterizerNotificationCallback_FWD_DEFINED__
typedef interface IXpsRasterizerNotificationCallback IXpsRasterizerNotificationCallback;
#ifdef __cplusplus
interface IXpsRasterizerNotificationCallback;
#endif /* __cplusplus */
#endif

#ifndef __IXpsRasterizer_FWD_DEFINED__
#define __IXpsRasterizer_FWD_DEFINED__
typedef interface IXpsRasterizer IXpsRasterizer;
#ifdef __cplusplus
interface IXpsRasterizer;
#endif /* __cplusplus */
#endif

#ifndef __IXpsRasterizationFactory_FWD_DEFINED__
#define __IXpsRasterizationFactory_FWD_DEFINED__
typedef interface IXpsRasterizationFactory IXpsRasterizationFactory;
#ifdef __cplusplus
interface IXpsRasterizationFactory;
#endif /* __cplusplus */
#endif

#ifndef __IXpsRasterizationFactory1_FWD_DEFINED__
#define __IXpsRasterizationFactory1_FWD_DEFINED__
typedef interface IXpsRasterizationFactory1 IXpsRasterizationFactory1;
#ifdef __cplusplus
interface IXpsRasterizationFactory1;
#endif /* __cplusplus */
#endif

/* Headers for imported files */

#include <objidl.h>
#include <wincodec.h>
#include <xpsobjectmodel.h>

#ifdef __cplusplus
extern "C" {
#endif

#ifndef __IXpsRasterizerNotificationCallback_FWD_DEFINED__
#define __IXpsRasterizerNotificationCallback_FWD_DEFINED__
typedef interface IXpsRasterizerNotificationCallback IXpsRasterizerNotificationCallback;
#ifdef __cplusplus
interface IXpsRasterizerNotificationCallback;
#endif /* __cplusplus */
#endif

#ifndef __IXpsRasterizer_FWD_DEFINED__
#define __IXpsRasterizer_FWD_DEFINED__
typedef interface IXpsRasterizer IXpsRasterizer;
#ifdef __cplusplus
interface IXpsRasterizer;
#endif /* __cplusplus */
#endif

#ifndef __IXpsRasterizationFactory_FWD_DEFINED__
#define __IXpsRasterizationFactory_FWD_DEFINED__
typedef interface IXpsRasterizationFactory IXpsRasterizationFactory;
#ifdef __cplusplus
interface IXpsRasterizationFactory;
#endif /* __cplusplus */
#endif

#ifndef __IXpsRasterizationFactory1_FWD_DEFINED__
#define __IXpsRasterizationFactory1_FWD_DEFINED__
typedef interface IXpsRasterizationFactory1 IXpsRasterizationFactory1;
#ifdef __cplusplus
interface IXpsRasterizationFactory1;
#endif /* __cplusplus */
#endif

#include <winapifamily.h>

#if WINAPI_FAMILY_PARTITION(WINAPI_PARTITION_DESKTOP)
typedef enum __WIDL_xpsrassvc_generated_name_00000048 {
    XPSRAS_RENDERING_MODE_ANTIALIASED = 0,
    XPSRAS_RENDERING_MODE_ALIASED = 1
} XPSRAS_RENDERING_MODE;
#if NTDDI_VERSION >= 0x06020000
typedef enum __WIDL_xpsrassvc_generated_name_00000049 {
    XPSRAS_PIXEL_FORMAT_32BPP_PBGRA_UINT_SRGB = 1,
    XPSRAS_PIXEL_FORMAT_64BPP_PRGBA_HALF_SCRGB = 2,
    XPSRAS_PIXEL_FORMAT_128BPP_PRGBA_FLOAT_SCRGB = 3
} XPSRAS_PIXEL_FORMAT;
#endif
/*****************************************************************************
 * IXpsRasterizerNotificationCallback interface
 */
#ifndef __IXpsRasterizerNotificationCallback_INTERFACE_DEFINED__
#define __IXpsRasterizerNotificationCallback_INTERFACE_DEFINED__

DEFINE_GUID(IID_IXpsRasterizerNotificationCallback, 0x9ab8fd0d, 0xcb94, 0x49c2, 0x9c,0xb0, 0x97,0xec,0x1d,0x54,0x69,0xd2);
#if defined(__cplusplus) && !defined(CINTERFACE)
MIDL_INTERFACE("9ab8fd0d-cb94-49c2-9cb0-97ec1d5469d2")
IXpsRasterizerNotificationCallback : public IUnknown
{
    virtual HRESULT STDMETHODCALLTYPE Continue(
        ) = 0;

};
#ifdef __CRT_UUID_DECL
__CRT_UUID_DECL(IXpsRasterizerNotificationCallback, 0x9ab8fd0d, 0xcb94, 0x49c2, 0x9c,0xb0, 0x97,0xec,0x1d,0x54,0x69,0xd2)
#endif
#else
typedef struct IXpsRasterizerNotificationCallbackVtbl {
    BEGIN_INTERFACE

    /*** IUnknown methods ***/
    HRESULT (STDMETHODCALLTYPE *QueryInterface)(
        IXpsRasterizerNotificationCallback *This,
        REFIID riid,
        void **ppvObject);

    ULONG (STDMETHODCALLTYPE *AddRef)(
        IXpsRasterizerNotificationCallback *This);

    ULONG (STDMETHODCALLTYPE *Release)(
        IXpsRasterizerNotificationCallback *This);

    /*** IXpsRasterizerNotificationCallback methods ***/
    HRESULT (STDMETHODCALLTYPE *Continue)(
        IXpsRasterizerNotificationCallback *This);

    END_INTERFACE
} IXpsRasterizerNotificationCallbackVtbl;

interface IXpsRasterizerNotificationCallback {
    CONST_VTBL IXpsRasterizerNotificationCallbackVtbl* lpVtbl;
};

#ifdef COBJMACROS
#ifndef WIDL_C_INLINE_WRAPPERS
/*** IUnknown methods ***/
#define IXpsRasterizerNotificationCallback_QueryInterface(This,riid,ppvObject) (This)->lpVtbl->QueryInterface(This,riid,ppvObject)
#define IXpsRasterizerNotificationCallback_AddRef(This) (This)->lpVtbl->AddRef(This)
#define IXpsRasterizerNotificationCallback_Release(This) (This)->lpVtbl->Release(This)
/*** IXpsRasterizerNotificationCallback methods ***/
#define IXpsRasterizerNotificationCallback_Continue(This) (This)->lpVtbl->Continue(This)
#else
/*** IUnknown methods ***/
static __WIDL_INLINE HRESULT IXpsRasterizerNotificationCallback_QueryInterface(IXpsRasterizerNotificationCallback* This,REFIID riid,void **ppvObject) {
    return This->lpVtbl->QueryInterface(This,riid,ppvObject);
}
static __WIDL_INLINE ULONG IXpsRasterizerNotificationCallback_AddRef(IXpsRasterizerNotificationCallback* This) {
    return This->lpVtbl->AddRef(This);
}
static __WIDL_INLINE ULONG IXpsRasterizerNotificationCallback_Release(IXpsRasterizerNotificationCallback* This) {
    return This->lpVtbl->Release(This);
}
/*** IXpsRasterizerNotificationCallback methods ***/
static __WIDL_INLINE HRESULT IXpsRasterizerNotificationCallback_Continue(IXpsRasterizerNotificationCallback* This) {
    return This->lpVtbl->Continue(This);
}
#endif
#endif

#endif


#endif  /* __IXpsRasterizerNotificationCallback_INTERFACE_DEFINED__ */

/*****************************************************************************
 * IXpsRasterizer interface
 */
#ifndef __IXpsRasterizer_INTERFACE_DEFINED__
#define __IXpsRasterizer_INTERFACE_DEFINED__

DEFINE_GUID(IID_IXpsRasterizer, 0x7567cfc8, 0xc156, 0x47a8, 0x9d,0xac, 0x11,0xa2,0xae,0x5b,0xdd,0x6b);
#if defined(__cplusplus) && !defined(CINTERFACE)
MIDL_INTERFACE("7567cfc8-c156-47a8-9dac-11a2ae5bdd6b")
IXpsRasterizer : public IUnknown
{
    virtual HRESULT STDMETHODCALLTYPE RasterizeRect(
        INT x,
        INT y,
        INT width,
        INT height,
        IXpsRasterizerNotificationCallback *notificationCallback,
        IWICBitmap **bitmap) = 0;

    virtual HRESULT STDMETHODCALLTYPE SetMinimalLineWidth(
        INT width) = 0;

};
#ifdef __CRT_UUID_DECL
__CRT_UUID_DECL(IXpsRasterizer, 0x7567cfc8, 0xc156, 0x47a8, 0x9d,0xac, 0x11,0xa2,0xae,0x5b,0xdd,0x6b)
#endif
#else
typedef struct IXpsRasterizerVtbl {
    BEGIN_INTERFACE

    /*** IUnknown methods ***/
    HRESULT (STDMETHODCALLTYPE *QueryInterface)(
        IXpsRasterizer *This,
        REFIID riid,
        void **ppvObject);

    ULONG (STDMETHODCALLTYPE *AddRef)(
        IXpsRasterizer *This);

    ULONG (STDMETHODCALLTYPE *Release)(
        IXpsRasterizer *This);

    /*** IXpsRasterizer methods ***/
    HRESULT (STDMETHODCALLTYPE *RasterizeRect)(
        IXpsRasterizer *This,
        INT x,
        INT y,
        INT width,
        INT height,
        IXpsRasterizerNotificationCallback *notificationCallback,
        IWICBitmap **bitmap);

    HRESULT (STDMETHODCALLTYPE *SetMinimalLineWidth)(
        IXpsRasterizer *This,
        INT width);

    END_INTERFACE
} IXpsRasterizerVtbl;

interface IXpsRasterizer {
    CONST_VTBL IXpsRasterizerVtbl* lpVtbl;
};

#ifdef COBJMACROS
#ifndef WIDL_C_INLINE_WRAPPERS
/*** IUnknown methods ***/
#define IXpsRasterizer_QueryInterface(This,riid,ppvObject) (This)->lpVtbl->QueryInterface(This,riid,ppvObject)
#define IXpsRasterizer_AddRef(This) (This)->lpVtbl->AddRef(This)
#define IXpsRasterizer_Release(This) (This)->lpVtbl->Release(This)
/*** IXpsRasterizer methods ***/
#define IXpsRasterizer_RasterizeRect(This,x,y,width,height,notificationCallback,bitmap) (This)->lpVtbl->RasterizeRect(This,x,y,width,height,notificationCallback,bitmap)
#define IXpsRasterizer_SetMinimalLineWidth(This,width) (This)->lpVtbl->SetMinimalLineWidth(This,width)
#else
/*** IUnknown methods ***/
static __WIDL_INLINE HRESULT IXpsRasterizer_QueryInterface(IXpsRasterizer* This,REFIID riid,void **ppvObject) {
    return This->lpVtbl->QueryInterface(This,riid,ppvObject);
}
static __WIDL_INLINE ULONG IXpsRasterizer_AddRef(IXpsRasterizer* This) {
    return This->lpVtbl->AddRef(This);
}
static __WIDL_INLINE ULONG IXpsRasterizer_Release(IXpsRasterizer* This) {
    return This->lpVtbl->Release(This);
}
/*** IXpsRasterizer methods ***/
static __WIDL_INLINE HRESULT IXpsRasterizer_RasterizeRect(IXpsRasterizer* This,INT x,INT y,INT width,INT height,IXpsRasterizerNotificationCallback *notificationCallback,IWICBitmap **bitmap) {
    return This->lpVtbl->RasterizeRect(This,x,y,width,height,notificationCallback,bitmap);
}
static __WIDL_INLINE HRESULT IXpsRasterizer_SetMinimalLineWidth(IXpsRasterizer* This,INT width) {
    return This->lpVtbl->SetMinimalLineWidth(This,width);
}
#endif
#endif

#endif


#endif  /* __IXpsRasterizer_INTERFACE_DEFINED__ */

/*****************************************************************************
 * IXpsRasterizationFactory interface
 */
#ifndef __IXpsRasterizationFactory_INTERFACE_DEFINED__
#define __IXpsRasterizationFactory_INTERFACE_DEFINED__

DEFINE_GUID(IID_IXpsRasterizationFactory, 0xe094808a, 0x24c6, 0x482b, 0xa3,0xa7, 0xc2,0x1a,0xc9,0xb5,0x5f,0x17);
#if defined(__cplusplus) && !defined(CINTERFACE)
MIDL_INTERFACE("e094808a-24c6-482b-a3a7-c21ac9b55f17")
IXpsRasterizationFactory : public IUnknown
{
    virtual HRESULT STDMETHODCALLTYPE CreateRasterizer(
        IXpsOMPage *xpsPage,
        FLOAT DPI,
        XPSRAS_RENDERING_MODE nonTextRenderingMode,
        XPSRAS_RENDERING_MODE textRenderingMode,
        IXpsRasterizer **ppIXPSRasterizer) = 0;

};
#ifdef __CRT_UUID_DECL
__CRT_UUID_DECL(IXpsRasterizationFactory, 0xe094808a, 0x24c6, 0x482b, 0xa3,0xa7, 0xc2,0x1a,0xc9,0xb5,0x5f,0x17)
#endif
#else
typedef struct IXpsRasterizationFactoryVtbl {
    BEGIN_INTERFACE

    /*** IUnknown methods ***/
    HRESULT (STDMETHODCALLTYPE *QueryInterface)(
        IXpsRasterizationFactory *This,
        REFIID riid,
        void **ppvObject);

    ULONG (STDMETHODCALLTYPE *AddRef)(
        IXpsRasterizationFactory *This);

    ULONG (STDMETHODCALLTYPE *Release)(
        IXpsRasterizationFactory *This);

    /*** IXpsRasterizationFactory methods ***/
    HRESULT (STDMETHODCALLTYPE *CreateRasterizer)(
        IXpsRasterizationFactory *This,
        IXpsOMPage *xpsPage,
        FLOAT DPI,
        XPSRAS_RENDERING_MODE nonTextRenderingMode,
        XPSRAS_RENDERING_MODE textRenderingMode,
        IXpsRasterizer **ppIXPSRasterizer);

    END_INTERFACE
} IXpsRasterizationFactoryVtbl;

interface IXpsRasterizationFactory {
    CONST_VTBL IXpsRasterizationFactoryVtbl* lpVtbl;
};

#ifdef COBJMACROS
#ifndef WIDL_C_INLINE_WRAPPERS
/*** IUnknown methods ***/
#define IXpsRasterizationFactory_QueryInterface(This,riid,ppvObject) (This)->lpVtbl->QueryInterface(This,riid,ppvObject)
#define IXpsRasterizationFactory_AddRef(This) (This)->lpVtbl->AddRef(This)
#define IXpsRasterizationFactory_Release(This) (This)->lpVtbl->Release(This)
/*** IXpsRasterizationFactory methods ***/
#define IXpsRasterizationFactory_CreateRasterizer(This,xpsPage,DPI,nonTextRenderingMode,textRenderingMode,ppIXPSRasterizer) (This)->lpVtbl->CreateRasterizer(This,xpsPage,DPI,nonTextRenderingMode,textRenderingMode,ppIXPSRasterizer)
#else
/*** IUnknown methods ***/
static __WIDL_INLINE HRESULT IXpsRasterizationFactory_QueryInterface(IXpsRasterizationFactory* This,REFIID riid,void **ppvObject) {
    return This->lpVtbl->QueryInterface(This,riid,ppvObject);
}
static __WIDL_INLINE ULONG IXpsRasterizationFactory_AddRef(IXpsRasterizationFactory* This) {
    return This->lpVtbl->AddRef(This);
}
static __WIDL_INLINE ULONG IXpsRasterizationFactory_Release(IXpsRasterizationFactory* This) {
    return This->lpVtbl->Release(This);
}
/*** IXpsRasterizationFactory methods ***/
static __WIDL_INLINE HRESULT IXpsRasterizationFactory_CreateRasterizer(IXpsRasterizationFactory* This,IXpsOMPage *xpsPage,FLOAT DPI,XPSRAS_RENDERING_MODE nonTextRenderingMode,XPSRAS_RENDERING_MODE textRenderingMode,IXpsRasterizer **ppIXPSRasterizer) {
    return This->lpVtbl->CreateRasterizer(This,xpsPage,DPI,nonTextRenderingMode,textRenderingMode,ppIXPSRasterizer);
}
#endif
#endif

#endif


#endif  /* __IXpsRasterizationFactory_INTERFACE_DEFINED__ */

#if NTDDI_VERSION >= 0x06020000
/*****************************************************************************
 * IXpsRasterizationFactory1 interface
 */
#ifndef __IXpsRasterizationFactory1_INTERFACE_DEFINED__
#define __IXpsRasterizationFactory1_INTERFACE_DEFINED__

DEFINE_GUID(IID_IXpsRasterizationFactory1, 0x2d6e5f77, 0x6414, 0x4a1e, 0xa8,0xe0, 0xd4,0x19,0x4c,0xe6,0xa2,0x6f);
#if defined(__cplusplus) && !defined(CINTERFACE)
MIDL_INTERFACE("2d6e5f77-6414-4a1e-a8e0-d4194ce6a26f")
IXpsRasterizationFactory1 : public IUnknown
{
    virtual HRESULT STDMETHODCALLTYPE CreateRasterizer(
        IXpsOMPage *xpsPage,
        FLOAT DPI,
        XPSRAS_RENDERING_MODE nonTextRenderingMode,
        XPSRAS_RENDERING_MODE textRenderingMode,
        XPSRAS_PIXEL_FORMAT pixelFormat,
        IXpsRasterizer **ppIXPSRasterizer) = 0;

};
#ifdef __CRT_UUID_DECL
__CRT_UUID_DECL(IXpsRasterizationFactory1, 0x2d6e5f77, 0x6414, 0x4a1e, 0xa8,0xe0, 0xd4,0x19,0x4c,0xe6,0xa2,0x6f)
#endif
#else
typedef struct IXpsRasterizationFactory1Vtbl {
    BEGIN_INTERFACE

    /*** IUnknown methods ***/
    HRESULT (STDMETHODCALLTYPE *QueryInterface)(
        IXpsRasterizationFactory1 *This,
        REFIID riid,
        void **ppvObject);

    ULONG (STDMETHODCALLTYPE *AddRef)(
        IXpsRasterizationFactory1 *This);

    ULONG (STDMETHODCALLTYPE *Release)(
        IXpsRasterizationFactory1 *This);

    /*** IXpsRasterizationFactory1 methods ***/
    HRESULT (STDMETHODCALLTYPE *CreateRasterizer)(
        IXpsRasterizationFactory1 *This,
        IXpsOMPage *xpsPage,
        FLOAT DPI,
        XPSRAS_RENDERING_MODE nonTextRenderingMode,
        XPSRAS_RENDERING_MODE textRenderingMode,
        XPSRAS_PIXEL_FORMAT pixelFormat,
        IXpsRasterizer **ppIXPSRasterizer);

    END_INTERFACE
} IXpsRasterizationFactory1Vtbl;

interface IXpsRasterizationFactory1 {
    CONST_VTBL IXpsRasterizationFactory1Vtbl* lpVtbl;
};

#ifdef COBJMACROS
#ifndef WIDL_C_INLINE_WRAPPERS
/*** IUnknown methods ***/
#define IXpsRasterizationFactory1_QueryInterface(This,riid,ppvObject) (This)->lpVtbl->QueryInterface(This,riid,ppvObject)
#define IXpsRasterizationFactory1_AddRef(This) (This)->lpVtbl->AddRef(This)
#define IXpsRasterizationFactory1_Release(This) (This)->lpVtbl->Release(This)
/*** IXpsRasterizationFactory1 methods ***/
#define IXpsRasterizationFactory1_CreateRasterizer(This,xpsPage,DPI,nonTextRenderingMode,textRenderingMode,pixelFormat,ppIXPSRasterizer) (This)->lpVtbl->CreateRasterizer(This,xpsPage,DPI,nonTextRenderingMode,textRenderingMode,pixelFormat,ppIXPSRasterizer)
#else
/*** IUnknown methods ***/
static __WIDL_INLINE HRESULT IXpsRasterizationFactory1_QueryInterface(IXpsRasterizationFactory1* This,REFIID riid,void **ppvObject) {
    return This->lpVtbl->QueryInterface(This,riid,ppvObject);
}
static __WIDL_INLINE ULONG IXpsRasterizationFactory1_AddRef(IXpsRasterizationFactory1* This) {
    return This->lpVtbl->AddRef(This);
}
static __WIDL_INLINE ULONG IXpsRasterizationFactory1_Release(IXpsRasterizationFactory1* This) {
    return This->lpVtbl->Release(This);
}
/*** IXpsRasterizationFactory1 methods ***/
static __WIDL_INLINE HRESULT IXpsRasterizationFactory1_CreateRasterizer(IXpsRasterizationFactory1* This,IXpsOMPage *xpsPage,FLOAT DPI,XPSRAS_RENDERING_MODE nonTextRenderingMode,XPSRAS_RENDERING_MODE textRenderingMode,XPSRAS_PIXEL_FORMAT pixelFormat,IXpsRasterizer **ppIXPSRasterizer) {
    return This->lpVtbl->CreateRasterizer(This,xpsPage,DPI,nonTextRenderingMode,textRenderingMode,pixelFormat,ppIXPSRasterizer);
}
#endif
#endif

#endif


#endif  /* __IXpsRasterizationFactory1_INTERFACE_DEFINED__ */

#endif
#endif
/* Begin additional prototypes for all interfaces */


/* End additional prototypes */

#ifdef __cplusplus
}
#endif

#endif /* __xpsrassvc_h__ */
