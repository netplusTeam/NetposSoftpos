.class public final Lcom/woleapp/netpos/contactless/model/DataToLogAfterConnectingToNibss;
.super Ljava/lang/Object;
.source "DataToLogAfterConnectingToNibss.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0007J\t\u0010\r\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u000e\u001a\u00020\u0005H\u00c6\u0003J\t\u0010\u000f\u001a\u00020\u0003H\u00c6\u0003J\'\u0010\u0010\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0003H\u00c6\u0001J\u0013\u0010\u0011\u001a\u00020\u00122\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0014\u001a\u00020\u0015H\u00d6\u0001J\t\u0010\u0016\u001a\u00020\u0003H\u00d6\u0001R\u0011\u0010\u0006\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\tR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/woleapp/netpos/contactless/model/DataToLogAfterConnectingToNibss;",
        "",
        "status",
        "",
        "transactionResponse",
        "Lcom/woleapp/netpos/contactless/model/TransactionResponseX;",
        "rrn",
        "(Ljava/lang/String;Lcom/woleapp/netpos/contactless/model/TransactionResponseX;Ljava/lang/String;)V",
        "getRrn",
        "()Ljava/lang/String;",
        "getStatus",
        "getTransactionResponse",
        "()Lcom/woleapp/netpos/contactless/model/TransactionResponseX;",
        "component1",
        "component2",
        "component3",
        "copy",
        "equals",
        "",
        "other",
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
.field private final rrn:Ljava/lang/String;

.field private final status:Ljava/lang/String;

.field private final transactionResponse:Lcom/woleapp/netpos/contactless/model/TransactionResponseX;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/woleapp/netpos/contactless/model/TransactionResponseX;Ljava/lang/String;)V
    .locals 1
    .param p1, "status"    # Ljava/lang/String;
    .param p2, "transactionResponse"    # Lcom/woleapp/netpos/contactless/model/TransactionResponseX;
    .param p3, "rrn"    # Ljava/lang/String;

    const-string v0, "status"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "transactionResponse"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rrn"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/woleapp/netpos/contactless/model/DataToLogAfterConnectingToNibss;->status:Ljava/lang/String;

    .line 11
    iput-object p2, p0, Lcom/woleapp/netpos/contactless/model/DataToLogAfterConnectingToNibss;->transactionResponse:Lcom/woleapp/netpos/contactless/model/TransactionResponseX;

    .line 12
    iput-object p3, p0, Lcom/woleapp/netpos/contactless/model/DataToLogAfterConnectingToNibss;->rrn:Ljava/lang/String;

    .line 9
    return-void
.end method

.method public static synthetic copy$default(Lcom/woleapp/netpos/contactless/model/DataToLogAfterConnectingToNibss;Ljava/lang/String;Lcom/woleapp/netpos/contactless/model/TransactionResponseX;Ljava/lang/String;ILjava/lang/Object;)Lcom/woleapp/netpos/contactless/model/DataToLogAfterConnectingToNibss;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget-object p1, p0, Lcom/woleapp/netpos/contactless/model/DataToLogAfterConnectingToNibss;->status:Ljava/lang/String;

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    iget-object p2, p0, Lcom/woleapp/netpos/contactless/model/DataToLogAfterConnectingToNibss;->transactionResponse:Lcom/woleapp/netpos/contactless/model/TransactionResponseX;

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    iget-object p3, p0, Lcom/woleapp/netpos/contactless/model/DataToLogAfterConnectingToNibss;->rrn:Ljava/lang/String;

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/woleapp/netpos/contactless/model/DataToLogAfterConnectingToNibss;->copy(Ljava/lang/String;Lcom/woleapp/netpos/contactless/model/TransactionResponseX;Ljava/lang/String;)Lcom/woleapp/netpos/contactless/model/DataToLogAfterConnectingToNibss;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/woleapp/netpos/contactless/model/DataToLogAfterConnectingToNibss;->status:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()Lcom/woleapp/netpos/contactless/model/TransactionResponseX;
    .locals 1

    iget-object v0, p0, Lcom/woleapp/netpos/contactless/model/DataToLogAfterConnectingToNibss;->transactionResponse:Lcom/woleapp/netpos/contactless/model/TransactionResponseX;

    return-object v0
.end method

.method public final component3()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/woleapp/netpos/contactless/model/DataToLogAfterConnectingToNibss;->rrn:Ljava/lang/String;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;Lcom/woleapp/netpos/contactless/model/TransactionResponseX;Ljava/lang/String;)Lcom/woleapp/netpos/contactless/model/DataToLogAfterConnectingToNibss;
    .locals 1

    const-string v0, "status"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "transactionResponse"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rrn"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/woleapp/netpos/contactless/model/DataToLogAfterConnectingToNibss;

    invoke-direct {v0, p1, p2, p3}, Lcom/woleapp/netpos/contactless/model/DataToLogAfterConnectingToNibss;-><init>(Ljava/lang/String;Lcom/woleapp/netpos/contactless/model/TransactionResponseX;Ljava/lang/String;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/woleapp/netpos/contactless/model/DataToLogAfterConnectingToNibss;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/woleapp/netpos/contactless/model/DataToLogAfterConnectingToNibss;

    iget-object v3, p0, Lcom/woleapp/netpos/contactless/model/DataToLogAfterConnectingToNibss;->status:Ljava/lang/String;

    iget-object v4, v1, Lcom/woleapp/netpos/contactless/model/DataToLogAfterConnectingToNibss;->status:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    return v2

    :cond_2
    iget-object v3, p0, Lcom/woleapp/netpos/contactless/model/DataToLogAfterConnectingToNibss;->transactionResponse:Lcom/woleapp/netpos/contactless/model/TransactionResponseX;

    iget-object v4, v1, Lcom/woleapp/netpos/contactless/model/DataToLogAfterConnectingToNibss;->transactionResponse:Lcom/woleapp/netpos/contactless/model/TransactionResponseX;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    return v2

    :cond_3
    iget-object v3, p0, Lcom/woleapp/netpos/contactless/model/DataToLogAfterConnectingToNibss;->rrn:Ljava/lang/String;

    iget-object v1, v1, Lcom/woleapp/netpos/contactless/model/DataToLogAfterConnectingToNibss;->rrn:Ljava/lang/String;

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getRrn()Ljava/lang/String;
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/model/DataToLogAfterConnectingToNibss;->rrn:Ljava/lang/String;

    return-object v0
.end method

.method public final getStatus()Ljava/lang/String;
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/model/DataToLogAfterConnectingToNibss;->status:Ljava/lang/String;

    return-object v0
.end method

.method public final getTransactionResponse()Lcom/woleapp/netpos/contactless/model/TransactionResponseX;
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/model/DataToLogAfterConnectingToNibss;->transactionResponse:Lcom/woleapp/netpos/contactless/model/TransactionResponseX;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/woleapp/netpos/contactless/model/DataToLogAfterConnectingToNibss;->status:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/woleapp/netpos/contactless/model/DataToLogAfterConnectingToNibss;->transactionResponse:Lcom/woleapp/netpos/contactless/model/TransactionResponseX;

    invoke-virtual {v2}, Lcom/woleapp/netpos/contactless/model/TransactionResponseX;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lcom/woleapp/netpos/contactless/model/DataToLogAfterConnectingToNibss;->rrn:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DataToLogAfterConnectingToNibss(status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/woleapp/netpos/contactless/model/DataToLogAfterConnectingToNibss;->status:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", transactionResponse="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/woleapp/netpos/contactless/model/DataToLogAfterConnectingToNibss;->transactionResponse:Lcom/woleapp/netpos/contactless/model/TransactionResponseX;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", rrn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/woleapp/netpos/contactless/model/DataToLogAfterConnectingToNibss;->rrn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
