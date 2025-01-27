.class public final Lcom/woleapp/netpos/contactless/util/Resource$Companion;
.super Ljava/lang/Object;
.source "Resource.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/woleapp/netpos/contactless/util/Resource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J!\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u0002H\u00050\u0004\"\u0004\u0008\u0001\u0010\u00052\u0008\u0010\u0006\u001a\u0004\u0018\u0001H\u0005\u00a2\u0006\u0002\u0010\u0007J!\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u0002H\u00050\u0004\"\u0004\u0008\u0001\u0010\u00052\u0008\u0010\u0006\u001a\u0004\u0018\u0001H\u0005\u00a2\u0006\u0002\u0010\u0007J!\u0010\t\u001a\u0008\u0012\u0004\u0012\u0002H\u00050\u0004\"\u0004\u0008\u0001\u0010\u00052\u0008\u0010\u0006\u001a\u0004\u0018\u0001H\u0005\u00a2\u0006\u0002\u0010\u0007J!\u0010\n\u001a\u0008\u0012\u0004\u0012\u0002H\u00050\u0004\"\u0004\u0008\u0001\u0010\u00052\u0008\u0010\u0006\u001a\u0004\u0018\u0001H\u0005\u00a2\u0006\u0002\u0010\u0007\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/woleapp/netpos/contactless/util/Resource$Companion;",
        "",
        "()V",
        "error",
        "Lcom/woleapp/netpos/contactless/util/Resource;",
        "T",
        "data",
        "(Ljava/lang/Object;)Lcom/woleapp/netpos/contactless/util/Resource;",
        "loading",
        "success",
        "timeOut",
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

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/woleapp/netpos/contactless/util/Resource$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final error(Ljava/lang/Object;)Lcom/woleapp/netpos/contactless/util/Resource;
    .locals 3
    .param p1, "data"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lcom/woleapp/netpos/contactless/util/Resource<",
            "TT;>;"
        }
    .end annotation

    .line 17
    new-instance v0, Lcom/woleapp/netpos/contactless/util/Resource;

    .line 18
    sget-object v1, Lcom/woleapp/netpos/contactless/model/Status;->ERROR:Lcom/woleapp/netpos/contactless/model/Status;

    .line 19
    nop

    .line 20
    nop

    .line 17
    const-string v2, "Error"

    invoke-direct {v0, v1, p1, v2}, Lcom/woleapp/netpos/contactless/util/Resource;-><init>(Lcom/woleapp/netpos/contactless/model/Status;Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    return-object v0
.end method

.method public final loading(Ljava/lang/Object;)Lcom/woleapp/netpos/contactless/util/Resource;
    .locals 3
    .param p1, "data"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lcom/woleapp/netpos/contactless/util/Resource<",
            "TT;>;"
        }
    .end annotation

    .line 23
    new-instance v0, Lcom/woleapp/netpos/contactless/util/Resource;

    .line 24
    sget-object v1, Lcom/woleapp/netpos/contactless/model/Status;->LOADING:Lcom/woleapp/netpos/contactless/model/Status;

    .line 25
    nop

    .line 26
    nop

    .line 23
    const-string v2, "Loading"

    invoke-direct {v0, v1, p1, v2}, Lcom/woleapp/netpos/contactless/util/Resource;-><init>(Lcom/woleapp/netpos/contactless/model/Status;Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    return-object v0
.end method

.method public final success(Ljava/lang/Object;)Lcom/woleapp/netpos/contactless/util/Resource;
    .locals 3
    .param p1, "data"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lcom/woleapp/netpos/contactless/util/Resource<",
            "TT;>;"
        }
    .end annotation

    .line 11
    new-instance v0, Lcom/woleapp/netpos/contactless/util/Resource;

    .line 12
    sget-object v1, Lcom/woleapp/netpos/contactless/model/Status;->SUCCESS:Lcom/woleapp/netpos/contactless/model/Status;

    .line 13
    nop

    .line 14
    nop

    .line 11
    const-string v2, "Success"

    invoke-direct {v0, v1, p1, v2}, Lcom/woleapp/netpos/contactless/util/Resource;-><init>(Lcom/woleapp/netpos/contactless/model/Status;Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    return-object v0
.end method

.method public final timeOut(Ljava/lang/Object;)Lcom/woleapp/netpos/contactless/util/Resource;
    .locals 3
    .param p1, "data"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lcom/woleapp/netpos/contactless/util/Resource<",
            "TT;>;"
        }
    .end annotation

    .line 29
    new-instance v0, Lcom/woleapp/netpos/contactless/util/Resource;

    .line 30
    sget-object v1, Lcom/woleapp/netpos/contactless/model/Status;->TIMEOUT:Lcom/woleapp/netpos/contactless/model/Status;

    .line 31
    nop

    .line 32
    nop

    .line 29
    const-string v2, "TimeOut"

    invoke-direct {v0, v1, p1, v2}, Lcom/woleapp/netpos/contactless/util/Resource;-><init>(Lcom/woleapp/netpos/contactless/model/Status;Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    return-object v0
.end method
