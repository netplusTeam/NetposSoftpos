.class public final Lcom/woleapp/netpos/contactless/model/SuccessNetworkResponse;
.super Lcom/woleapp/netpos/contactless/model/NetworkResponse;
.source "Payloads.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\r\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0002\u0010\u0006J\t\u0010\u000f\u001a\u00020\u0003H\u00c6\u0003J\u000b\u0010\u0010\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003J\u001f\u0010\u0011\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u00c6\u0001J\u0013\u0010\u0012\u001a\u00020\u00132\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0015H\u00d6\u0003J\t\u0010\u0016\u001a\u00020\u0017H\u00d6\u0001J\t\u0010\u0018\u001a\u00020\u0003H\u00d6\u0001R\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\"\u0004\u0008\t\u0010\nR\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000e\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/woleapp/netpos/contactless/model/SuccessNetworkResponse;",
        "Lcom/woleapp/netpos/contactless/model/NetworkResponse;",
        "message",
        "",
        "data",
        "Lcom/woleapp/netpos/contactless/model/PayBillResponse;",
        "(Ljava/lang/String;Lcom/woleapp/netpos/contactless/model/PayBillResponse;)V",
        "getData",
        "()Lcom/woleapp/netpos/contactless/model/PayBillResponse;",
        "setData",
        "(Lcom/woleapp/netpos/contactless/model/PayBillResponse;)V",
        "getMessage",
        "()Ljava/lang/String;",
        "setMessage",
        "(Ljava/lang/String;)V",
        "component1",
        "component2",
        "copy",
        "equals",
        "",
        "other",
        "",
        "hashCode",
        "",
        "toString",
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
.field private data:Lcom/woleapp/netpos/contactless/model/PayBillResponse;

.field private message:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/woleapp/netpos/contactless/model/PayBillResponse;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "data"    # Lcom/woleapp/netpos/contactless/model/PayBillResponse;

    const-string v0, "message"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/woleapp/netpos/contactless/model/NetworkResponse;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 63
    iput-object p1, p0, Lcom/woleapp/netpos/contactless/model/SuccessNetworkResponse;->message:Ljava/lang/String;

    iput-object p2, p0, Lcom/woleapp/netpos/contactless/model/SuccessNetworkResponse;->data:Lcom/woleapp/netpos/contactless/model/PayBillResponse;

    return-void
.end method

.method public static synthetic copy$default(Lcom/woleapp/netpos/contactless/model/SuccessNetworkResponse;Ljava/lang/String;Lcom/woleapp/netpos/contactless/model/PayBillResponse;ILjava/lang/Object;)Lcom/woleapp/netpos/contactless/model/SuccessNetworkResponse;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget-object p1, p0, Lcom/woleapp/netpos/contactless/model/SuccessNetworkResponse;->message:Ljava/lang/String;

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget-object p2, p0, Lcom/woleapp/netpos/contactless/model/SuccessNetworkResponse;->data:Lcom/woleapp/netpos/contactless/model/PayBillResponse;

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/woleapp/netpos/contactless/model/SuccessNetworkResponse;->copy(Ljava/lang/String;Lcom/woleapp/netpos/contactless/model/PayBillResponse;)Lcom/woleapp/netpos/contactless/model/SuccessNetworkResponse;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/woleapp/netpos/contactless/model/SuccessNetworkResponse;->message:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()Lcom/woleapp/netpos/contactless/model/PayBillResponse;
    .locals 1

    iget-object v0, p0, Lcom/woleapp/netpos/contactless/model/SuccessNetworkResponse;->data:Lcom/woleapp/netpos/contactless/model/PayBillResponse;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;Lcom/woleapp/netpos/contactless/model/PayBillResponse;)Lcom/woleapp/netpos/contactless/model/SuccessNetworkResponse;
    .locals 1

    const-string v0, "message"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/woleapp/netpos/contactless/model/SuccessNetworkResponse;

    invoke-direct {v0, p1, p2}, Lcom/woleapp/netpos/contactless/model/SuccessNetworkResponse;-><init>(Ljava/lang/String;Lcom/woleapp/netpos/contactless/model/PayBillResponse;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/woleapp/netpos/contactless/model/SuccessNetworkResponse;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/woleapp/netpos/contactless/model/SuccessNetworkResponse;

    iget-object v3, p0, Lcom/woleapp/netpos/contactless/model/SuccessNetworkResponse;->message:Ljava/lang/String;

    iget-object v4, v1, Lcom/woleapp/netpos/contactless/model/SuccessNetworkResponse;->message:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    return v2

    :cond_2
    iget-object v3, p0, Lcom/woleapp/netpos/contactless/model/SuccessNetworkResponse;->data:Lcom/woleapp/netpos/contactless/model/PayBillResponse;

    iget-object v1, v1, Lcom/woleapp/netpos/contactless/model/SuccessNetworkResponse;->data:Lcom/woleapp/netpos/contactless/model/PayBillResponse;

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getData()Lcom/woleapp/netpos/contactless/model/PayBillResponse;
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/model/SuccessNetworkResponse;->data:Lcom/woleapp/netpos/contactless/model/PayBillResponse;

    return-object v0
.end method

.method public final getMessage()Ljava/lang/String;
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/model/SuccessNetworkResponse;->message:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/woleapp/netpos/contactless/model/SuccessNetworkResponse;->message:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/woleapp/netpos/contactless/model/SuccessNetworkResponse;->data:Lcom/woleapp/netpos/contactless/model/PayBillResponse;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Lcom/woleapp/netpos/contactless/model/PayBillResponse;->hashCode()I

    move-result v2

    :goto_0
    add-int/2addr v1, v2

    return v1
.end method

.method public final setData(Lcom/woleapp/netpos/contactless/model/PayBillResponse;)V
    .locals 0
    .param p1, "<set-?>"    # Lcom/woleapp/netpos/contactless/model/PayBillResponse;

    .line 63
    iput-object p1, p0, Lcom/woleapp/netpos/contactless/model/SuccessNetworkResponse;->data:Lcom/woleapp/netpos/contactless/model/PayBillResponse;

    return-void
.end method

.method public final setMessage(Ljava/lang/String;)V
    .locals 1
    .param p1, "<set-?>"    # Ljava/lang/String;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    iput-object p1, p0, Lcom/woleapp/netpos/contactless/model/SuccessNetworkResponse;->message:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SuccessNetworkResponse(message="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/woleapp/netpos/contactless/model/SuccessNetworkResponse;->message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", data="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/woleapp/netpos/contactless/model/SuccessNetworkResponse;->data:Lcom/woleapp/netpos/contactless/model/PayBillResponse;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
