.class public final Lcom/woleapp/netpos/contactless/di/customDependencies/assistedFactories/JavaScriptInterfaceAssistedFactory_Impl;
.super Ljava/lang/Object;
.source "JavaScriptInterfaceAssistedFactory_Impl.java"

# interfaces
.implements Lcom/woleapp/netpos/contactless/di/customDependencies/assistedFactories/JavaScriptInterfaceAssistedFactory;


# instance fields
.field private final delegateFactory:Lcom/woleapp/netpos/contactless/di/customDependencies/JavaScriptInterface_Factory;


# direct methods
.method constructor <init>(Lcom/woleapp/netpos/contactless/di/customDependencies/JavaScriptInterface_Factory;)V
    .locals 0
    .param p1, "delegateFactory"    # Lcom/woleapp/netpos/contactless/di/customDependencies/JavaScriptInterface_Factory;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "delegateFactory"
        }
    .end annotation

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/woleapp/netpos/contactless/di/customDependencies/assistedFactories/JavaScriptInterfaceAssistedFactory_Impl;->delegateFactory:Lcom/woleapp/netpos/contactless/di/customDependencies/JavaScriptInterface_Factory;

    .line 21
    return-void
.end method

.method public static create(Lcom/woleapp/netpos/contactless/di/customDependencies/JavaScriptInterface_Factory;)Ljavax/inject/Provider;
    .locals 1
    .param p0, "delegateFactory"    # Lcom/woleapp/netpos/contactless/di/customDependencies/JavaScriptInterface_Factory;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "delegateFactory"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/woleapp/netpos/contactless/di/customDependencies/JavaScriptInterface_Factory;",
            ")",
            "Ljavax/inject/Provider<",
            "Lcom/woleapp/netpos/contactless/di/customDependencies/assistedFactories/JavaScriptInterfaceAssistedFactory;",
            ">;"
        }
    .end annotation

    .line 31
    new-instance v0, Lcom/woleapp/netpos/contactless/di/customDependencies/assistedFactories/JavaScriptInterfaceAssistedFactory_Impl;

    invoke-direct {v0, p0}, Lcom/woleapp/netpos/contactless/di/customDependencies/assistedFactories/JavaScriptInterfaceAssistedFactory_Impl;-><init>(Lcom/woleapp/netpos/contactless/di/customDependencies/JavaScriptInterface_Factory;)V

    invoke-static {v0}, Ldagger/internal/InstanceFactory;->create(Ljava/lang/Object;)Ldagger/internal/Factory;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public createJavaScriptInterface(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;Ljava/lang/String;)Lcom/woleapp/netpos/contactless/di/customDependencies/JavaScriptInterface;
    .locals 1
    .param p1, "fragmentManager"    # Landroidx/fragment/app/FragmentManager;
    .param p2, "redirectHtml"    # Ljava/lang/String;
    .param p3, "transId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "fragmentManager",
            "redirectHtml",
            "transId"
        }
    .end annotation

    .line 26
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/di/customDependencies/assistedFactories/JavaScriptInterfaceAssistedFactory_Impl;->delegateFactory:Lcom/woleapp/netpos/contactless/di/customDependencies/JavaScriptInterface_Factory;

    invoke-virtual {v0, p1, p2, p3}, Lcom/woleapp/netpos/contactless/di/customDependencies/JavaScriptInterface_Factory;->get(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;Ljava/lang/String;)Lcom/woleapp/netpos/contactless/di/customDependencies/JavaScriptInterface;

    move-result-object v0

    return-object v0
.end method
