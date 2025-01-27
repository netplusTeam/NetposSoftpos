.class public final Lcom/woleapp/netpos/contactless/ui/fragments/CompleteQrPaymentWebViewFragment_MembersInjector;
.super Ljava/lang/Object;
.source "CompleteQrPaymentWebViewFragment_MembersInjector.java"

# interfaces
.implements Ldagger/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/MembersInjector<",
        "Lcom/woleapp/netpos/contactless/ui/fragments/CompleteQrPaymentWebViewFragment;",
        ">;"
    }
.end annotation


# instance fields
.field private final customWebViewClientProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/woleapp/netpos/contactless/di/customDependencies/WebViewCallBack;",
            ">;"
        }
    .end annotation
.end field

.field private final javaScriptInterfaceAssistedFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/woleapp/netpos/contactless/di/customDependencies/assistedFactories/JavaScriptInterfaceAssistedFactory;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "customWebViewClientProvider",
            "javaScriptInterfaceAssistedFactoryProvider"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/woleapp/netpos/contactless/di/customDependencies/WebViewCallBack;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/woleapp/netpos/contactless/di/customDependencies/assistedFactories/JavaScriptInterfaceAssistedFactory;",
            ">;)V"
        }
    .end annotation

    .line 25
    .local p1, "customWebViewClientProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/woleapp/netpos/contactless/di/customDependencies/WebViewCallBack;>;"
    .local p2, "javaScriptInterfaceAssistedFactoryProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/woleapp/netpos/contactless/di/customDependencies/assistedFactories/JavaScriptInterfaceAssistedFactory;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/woleapp/netpos/contactless/ui/fragments/CompleteQrPaymentWebViewFragment_MembersInjector;->customWebViewClientProvider:Ljavax/inject/Provider;

    .line 27
    iput-object p2, p0, Lcom/woleapp/netpos/contactless/ui/fragments/CompleteQrPaymentWebViewFragment_MembersInjector;->javaScriptInterfaceAssistedFactoryProvider:Ljavax/inject/Provider;

    .line 28
    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/MembersInjector;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "customWebViewClientProvider",
            "javaScriptInterfaceAssistedFactoryProvider"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/woleapp/netpos/contactless/di/customDependencies/WebViewCallBack;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/woleapp/netpos/contactless/di/customDependencies/assistedFactories/JavaScriptInterfaceAssistedFactory;",
            ">;)",
            "Ldagger/MembersInjector<",
            "Lcom/woleapp/netpos/contactless/ui/fragments/CompleteQrPaymentWebViewFragment;",
            ">;"
        }
    .end annotation

    .line 33
    .local p0, "customWebViewClientProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/woleapp/netpos/contactless/di/customDependencies/WebViewCallBack;>;"
    .local p1, "javaScriptInterfaceAssistedFactoryProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/woleapp/netpos/contactless/di/customDependencies/assistedFactories/JavaScriptInterfaceAssistedFactory;>;"
    new-instance v0, Lcom/woleapp/netpos/contactless/ui/fragments/CompleteQrPaymentWebViewFragment_MembersInjector;

    invoke-direct {v0, p0, p1}, Lcom/woleapp/netpos/contactless/ui/fragments/CompleteQrPaymentWebViewFragment_MembersInjector;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static injectCustomWebViewClient(Lcom/woleapp/netpos/contactless/ui/fragments/CompleteQrPaymentWebViewFragment;Lcom/woleapp/netpos/contactless/di/customDependencies/WebViewCallBack;)V
    .locals 0
    .param p0, "instance"    # Lcom/woleapp/netpos/contactless/ui/fragments/CompleteQrPaymentWebViewFragment;
    .param p1, "customWebViewClient"    # Lcom/woleapp/netpos/contactless/di/customDependencies/WebViewCallBack;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "instance",
            "customWebViewClient"
        }
    .end annotation

    .line 45
    iput-object p1, p0, Lcom/woleapp/netpos/contactless/ui/fragments/CompleteQrPaymentWebViewFragment;->customWebViewClient:Lcom/woleapp/netpos/contactless/di/customDependencies/WebViewCallBack;

    .line 46
    return-void
.end method

.method public static injectJavaScriptInterfaceAssistedFactory(Lcom/woleapp/netpos/contactless/ui/fragments/CompleteQrPaymentWebViewFragment;Lcom/woleapp/netpos/contactless/di/customDependencies/assistedFactories/JavaScriptInterfaceAssistedFactory;)V
    .locals 0
    .param p0, "instance"    # Lcom/woleapp/netpos/contactless/ui/fragments/CompleteQrPaymentWebViewFragment;
    .param p1, "javaScriptInterfaceAssistedFactory"    # Lcom/woleapp/netpos/contactless/di/customDependencies/assistedFactories/JavaScriptInterfaceAssistedFactory;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "instance",
            "javaScriptInterfaceAssistedFactory"
        }
    .end annotation

    .line 52
    iput-object p1, p0, Lcom/woleapp/netpos/contactless/ui/fragments/CompleteQrPaymentWebViewFragment;->javaScriptInterfaceAssistedFactory:Lcom/woleapp/netpos/contactless/di/customDependencies/assistedFactories/JavaScriptInterfaceAssistedFactory;

    .line 53
    return-void
.end method


# virtual methods
.method public injectMembers(Lcom/woleapp/netpos/contactless/ui/fragments/CompleteQrPaymentWebViewFragment;)V
    .locals 1
    .param p1, "instance"    # Lcom/woleapp/netpos/contactless/ui/fragments/CompleteQrPaymentWebViewFragment;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "instance"
        }
    .end annotation

    .line 38
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/CompleteQrPaymentWebViewFragment_MembersInjector;->customWebViewClientProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/woleapp/netpos/contactless/di/customDependencies/WebViewCallBack;

    invoke-static {p1, v0}, Lcom/woleapp/netpos/contactless/ui/fragments/CompleteQrPaymentWebViewFragment_MembersInjector;->injectCustomWebViewClient(Lcom/woleapp/netpos/contactless/ui/fragments/CompleteQrPaymentWebViewFragment;Lcom/woleapp/netpos/contactless/di/customDependencies/WebViewCallBack;)V

    .line 39
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/CompleteQrPaymentWebViewFragment_MembersInjector;->javaScriptInterfaceAssistedFactoryProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/woleapp/netpos/contactless/di/customDependencies/assistedFactories/JavaScriptInterfaceAssistedFactory;

    invoke-static {p1, v0}, Lcom/woleapp/netpos/contactless/ui/fragments/CompleteQrPaymentWebViewFragment_MembersInjector;->injectJavaScriptInterfaceAssistedFactory(Lcom/woleapp/netpos/contactless/ui/fragments/CompleteQrPaymentWebViewFragment;Lcom/woleapp/netpos/contactless/di/customDependencies/assistedFactories/JavaScriptInterfaceAssistedFactory;)V

    .line 40
    return-void
.end method

.method public bridge synthetic injectMembers(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "instance"
        }
    .end annotation

    .line 12
    check-cast p1, Lcom/woleapp/netpos/contactless/ui/fragments/CompleteQrPaymentWebViewFragment;

    invoke-virtual {p0, p1}, Lcom/woleapp/netpos/contactless/ui/fragments/CompleteQrPaymentWebViewFragment_MembersInjector;->injectMembers(Lcom/woleapp/netpos/contactless/ui/fragments/CompleteQrPaymentWebViewFragment;)V

    return-void
.end method
