.class public final Lcom/woleapp/netpos/contactless/model/NetworkResource;
.super Ljava/lang/Object;
.source "ZenithQr.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\n\u0018\u00002\u00020\u0001B\u0019\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0002\u0010\u0006B\u000f\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0007R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0008\u0010\t\"\u0004\u0008\n\u0010\u0007R\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000e\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/woleapp/netpos/contactless/model/NetworkResource;",
        "",
        "loadingState",
        "Lcom/woleapp/netpos/contactless/model/LoadingState;",
        "message",
        "",
        "(Lcom/woleapp/netpos/contactless/model/LoadingState;Ljava/lang/String;)V",
        "(Lcom/woleapp/netpos/contactless/model/LoadingState;)V",
        "getLoadingState",
        "()Lcom/woleapp/netpos/contactless/model/LoadingState;",
        "setLoadingState",
        "getMessage",
        "()Ljava/lang/String;",
        "setMessage",
        "(Ljava/lang/String;)V",
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


# instance fields
.field private loadingState:Lcom/woleapp/netpos/contactless/model/LoadingState;

.field private message:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/woleapp/netpos/contactless/model/LoadingState;)V
    .locals 1
    .param p1, "loadingState"    # Lcom/woleapp/netpos/contactless/model/LoadingState;

    const-string v0, "loadingState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/woleapp/netpos/contactless/model/NetworkResource;->loadingState:Lcom/woleapp/netpos/contactless/model/LoadingState;

    .line 45
    return-void
.end method

.method public constructor <init>(Lcom/woleapp/netpos/contactless/model/LoadingState;Ljava/lang/String;)V
    .locals 1
    .param p1, "loadingState"    # Lcom/woleapp/netpos/contactless/model/LoadingState;
    .param p2, "message"    # Ljava/lang/String;

    const-string v0, "loadingState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p2, p0, Lcom/woleapp/netpos/contactless/model/NetworkResource;->message:Ljava/lang/String;

    .line 40
    iput-object p1, p0, Lcom/woleapp/netpos/contactless/model/NetworkResource;->loadingState:Lcom/woleapp/netpos/contactless/model/LoadingState;

    .line 41
    return-void
.end method


# virtual methods
.method public final getLoadingState()Lcom/woleapp/netpos/contactless/model/LoadingState;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/model/NetworkResource;->loadingState:Lcom/woleapp/netpos/contactless/model/LoadingState;

    return-object v0
.end method

.method public final getMessage()Ljava/lang/String;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/model/NetworkResource;->message:Ljava/lang/String;

    return-object v0
.end method

.method public final setLoadingState(Lcom/woleapp/netpos/contactless/model/LoadingState;)V
    .locals 1
    .param p1, "<set-?>"    # Lcom/woleapp/netpos/contactless/model/LoadingState;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    iput-object p1, p0, Lcom/woleapp/netpos/contactless/model/NetworkResource;->loadingState:Lcom/woleapp/netpos/contactless/model/LoadingState;

    return-void
.end method

.method public final setMessage(Ljava/lang/String;)V
    .locals 0
    .param p1, "<set-?>"    # Ljava/lang/String;

    .line 36
    iput-object p1, p0, Lcom/woleapp/netpos/contactless/model/NetworkResource;->message:Ljava/lang/String;

    return-void
.end method
