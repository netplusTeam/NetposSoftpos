.class Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$FragmentCImpl$SwitchingProvider$1;
.super Ljava/lang/Object;
.source "DaggerNetPosApp_HiltComponents_SingletonC.java"

# interfaces
.implements Lcom/woleapp/netpos/contactless/di/customDependencies/assistedFactories/JavaScriptInterfaceAssistedFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$FragmentCImpl$SwitchingProvider;->get()Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$FragmentCImpl$SwitchingProvider;


# direct methods
.method constructor <init>(Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$FragmentCImpl$SwitchingProvider;)V
    .locals 0
    .param p1, "this$0"    # Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$FragmentCImpl$SwitchingProvider;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 607
    .local p0, "this":Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$FragmentCImpl$SwitchingProvider$1;, "Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$FragmentCImpl$SwitchingProvider$1;"
    iput-object p1, p0, Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$FragmentCImpl$SwitchingProvider$1;->this$0:Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$FragmentCImpl$SwitchingProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
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

    .line 611
    .local p0, "this":Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$FragmentCImpl$SwitchingProvider$1;, "Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$FragmentCImpl$SwitchingProvider$1;"
    new-instance v0, Lcom/woleapp/netpos/contactless/di/customDependencies/JavaScriptInterface;

    invoke-direct {v0, p1, p2, p3}, Lcom/woleapp/netpos/contactless/di/customDependencies/JavaScriptInterface;-><init>(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
