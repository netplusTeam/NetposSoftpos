.class public interface abstract Lcom/woleapp/netpos/contactless/di/customDependencies/assistedFactories/JavaScriptInterfaceAssistedFactory;
.super Ljava/lang/Object;
.source "JavaScriptInterfaceAssistedFactory.kt"


# annotations
.annotation runtime Ldagger/assisted/AssistedFactory;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0008g\u0018\u00002\u00020\u0001J&\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0001\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0001\u0010\u0006\u001a\u00020\u00072\u0008\u0008\u0001\u0010\u0008\u001a\u00020\u0007H&\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/woleapp/netpos/contactless/di/customDependencies/assistedFactories/JavaScriptInterfaceAssistedFactory;",
        "",
        "createJavaScriptInterface",
        "Lcom/woleapp/netpos/contactless/di/customDependencies/JavaScriptInterface;",
        "fragmentManager",
        "Landroidx/fragment/app/FragmentManager;",
        "redirectHtml",
        "",
        "transId",
        "app_fcmbeasypayDebug"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# virtual methods
.method public abstract createJavaScriptInterface(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;Ljava/lang/String;)Lcom/woleapp/netpos/contactless/di/customDependencies/JavaScriptInterface;
    .param p1    # Landroidx/fragment/app/FragmentManager;
        .annotation runtime Ldagger/assisted/Assisted;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Ldagger/assisted/Assisted;
            value = "redirectHtml"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Ldagger/assisted/Assisted;
            value = "transId"
        .end annotation
    .end param
.end method
