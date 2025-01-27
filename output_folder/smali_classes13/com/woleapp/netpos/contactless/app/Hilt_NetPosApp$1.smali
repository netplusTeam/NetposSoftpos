.class Lcom/woleapp/netpos/contactless/app/Hilt_NetPosApp$1;
.super Ljava/lang/Object;
.source "Hilt_NetPosApp.java"

# interfaces
.implements Ldagger/hilt/android/internal/managers/ComponentSupplier;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/woleapp/netpos/contactless/app/Hilt_NetPosApp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/woleapp/netpos/contactless/app/Hilt_NetPosApp;


# direct methods
.method constructor <init>(Lcom/woleapp/netpos/contactless/app/Hilt_NetPosApp;)V
    .locals 0
    .param p1, "this$0"    # Lcom/woleapp/netpos/contactless/app/Hilt_NetPosApp;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 19
    iput-object p1, p0, Lcom/woleapp/netpos/contactless/app/Hilt_NetPosApp$1;->this$0:Lcom/woleapp/netpos/contactless/app/Hilt_NetPosApp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 3

    .line 22
    invoke-static {}, Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC;->builder()Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$Builder;

    move-result-object v0

    new-instance v1, Ldagger/hilt/android/internal/modules/ApplicationContextModule;

    iget-object v2, p0, Lcom/woleapp/netpos/contactless/app/Hilt_NetPosApp$1;->this$0:Lcom/woleapp/netpos/contactless/app/Hilt_NetPosApp;

    invoke-direct {v1, v2}, Ldagger/hilt/android/internal/modules/ApplicationContextModule;-><init>(Landroid/content/Context;)V

    .line 23
    invoke-virtual {v0, v1}, Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$Builder;->applicationContextModule(Ldagger/hilt/android/internal/modules/ApplicationContextModule;)Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/woleapp/netpos/contactless/app/DaggerNetPosApp_HiltComponents_SingletonC$Builder;->build()Lcom/woleapp/netpos/contactless/app/NetPosApp_HiltComponents$SingletonC;

    move-result-object v0

    .line 22
    return-object v0
.end method
