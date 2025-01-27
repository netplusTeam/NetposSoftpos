.class public final Lcom/woleapp/netpos/contactless/di/customDependencies/JavaScriptInterface_Factory;
.super Ljava/lang/Object;
.source "JavaScriptInterface_Factory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    return-void
.end method

.method public static create()Lcom/woleapp/netpos/contactless/di/customDependencies/JavaScriptInterface_Factory;
    .locals 1

    .line 26
    new-instance v0, Lcom/woleapp/netpos/contactless/di/customDependencies/JavaScriptInterface_Factory;

    invoke-direct {v0}, Lcom/woleapp/netpos/contactless/di/customDependencies/JavaScriptInterface_Factory;-><init>()V

    return-object v0
.end method

.method public static newInstance(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;Ljava/lang/String;)Lcom/woleapp/netpos/contactless/di/customDependencies/JavaScriptInterface;
    .locals 1
    .param p0, "fragmentManager"    # Landroidx/fragment/app/FragmentManager;
    .param p1, "redirectHtml"    # Ljava/lang/String;
    .param p2, "transId"    # Ljava/lang/String;
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

    .line 31
    new-instance v0, Lcom/woleapp/netpos/contactless/di/customDependencies/JavaScriptInterface;

    invoke-direct {v0, p0, p1, p2}, Lcom/woleapp/netpos/contactless/di/customDependencies/JavaScriptInterface;-><init>(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public get(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;Ljava/lang/String;)Lcom/woleapp/netpos/contactless/di/customDependencies/JavaScriptInterface;
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

    .line 22
    invoke-static {p1, p2, p3}, Lcom/woleapp/netpos/contactless/di/customDependencies/JavaScriptInterface_Factory;->newInstance(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;Ljava/lang/String;)Lcom/woleapp/netpos/contactless/di/customDependencies/JavaScriptInterface;

    move-result-object v0

    return-object v0
.end method
