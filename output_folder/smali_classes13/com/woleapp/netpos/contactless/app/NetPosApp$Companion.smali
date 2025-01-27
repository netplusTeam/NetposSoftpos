.class public final Lcom/woleapp/netpos/contactless/app/NetPosApp$Companion;
.super Ljava/lang/Object;
.source "NetPosApp.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/woleapp/netpos/contactless/app/NetPosApp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0004R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R&\u0010\t\u001a\u0004\u0018\u00010\n8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008\u000b\u0010\u0002\u001a\u0004\u0008\u000c\u0010\r\"\u0004\u0008\u000e\u0010\u000f\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/woleapp/netpos/contactless/app/NetPosApp$Companion;",
        "",
        "()V",
        "INSTANCE",
        "Lcom/woleapp/netpos/contactless/app/NetPosApp;",
        "getINSTANCE",
        "()Lcom/woleapp/netpos/contactless/app/NetPosApp;",
        "setINSTANCE",
        "(Lcom/woleapp/netpos/contactless/app/NetPosApp;)V",
        "cr100Pos",
        "Lcom/dspread/xpos/QPOSService;",
        "getCr100Pos$annotations",
        "getCr100Pos",
        "()Lcom/dspread/xpos/QPOSService;",
        "setCr100Pos",
        "(Lcom/dspread/xpos/QPOSService;)V",
        "assignInstance",
        "",
        "instance",
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


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/woleapp/netpos/contactless/app/NetPosApp$Companion;-><init>()V

    return-void
.end method

.method public static synthetic getCr100Pos$annotations()V
    .locals 0
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    return-void
.end method


# virtual methods
.method public final assignInstance(Lcom/woleapp/netpos/contactless/app/NetPosApp;)V
    .locals 1
    .param p1, "instance"    # Lcom/woleapp/netpos/contactless/app/NetPosApp;

    const-string v0, "instance"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    invoke-virtual {p0, p1}, Lcom/woleapp/netpos/contactless/app/NetPosApp$Companion;->setINSTANCE(Lcom/woleapp/netpos/contactless/app/NetPosApp;)V

    .line 43
    return-void
.end method

.method public final getCr100Pos()Lcom/dspread/xpos/QPOSService;
    .locals 1

    .line 39
    invoke-static {}, Lcom/woleapp/netpos/contactless/app/NetPosApp;->access$getCr100Pos$cp()Lcom/dspread/xpos/QPOSService;

    move-result-object v0

    return-object v0
.end method

.method public final getINSTANCE()Lcom/woleapp/netpos/contactless/app/NetPosApp;
    .locals 1

    .line 36
    sget-object v0, Lcom/woleapp/netpos/contactless/app/NetPosApp;->INSTANCE:Lcom/woleapp/netpos/contactless/app/NetPosApp;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "INSTANCE"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final setCr100Pos(Lcom/dspread/xpos/QPOSService;)V
    .locals 0
    .param p1, "<set-?>"    # Lcom/dspread/xpos/QPOSService;

    .line 39
    invoke-static {p1}, Lcom/woleapp/netpos/contactless/app/NetPosApp;->access$setCr100Pos$cp(Lcom/dspread/xpos/QPOSService;)V

    return-void
.end method

.method public final setINSTANCE(Lcom/woleapp/netpos/contactless/app/NetPosApp;)V
    .locals 1
    .param p1, "<set-?>"    # Lcom/woleapp/netpos/contactless/app/NetPosApp;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    sput-object p1, Lcom/woleapp/netpos/contactless/app/NetPosApp;->INSTANCE:Lcom/woleapp/netpos/contactless/app/NetPosApp;

    return-void
.end method
