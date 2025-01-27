.class public final Lcom/danbamitale/epmslib/entities/AccountBalance;
.super Ljava/lang/Object;
.source "TransactionResponse.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u000c\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0011\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u0086\u0008\u0018\u00002\u00020\u0001B-\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u0012\u0006\u0010\t\u001a\u00020\n\u00a2\u0006\u0002\u0010\u000bJ\t\u0010\u0015\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0016\u001a\u00020\u0005H\u00c6\u0003J\t\u0010\u0017\u001a\u00020\u0005H\u00c6\u0003J\t\u0010\u0018\u001a\u00020\u0008H\u00c6\u0003J\t\u0010\u0019\u001a\u00020\nH\u00c6\u0003J;\u0010\u001a\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00082\u0008\u0008\u0002\u0010\t\u001a\u00020\nH\u00c6\u0001J\u0013\u0010\u001b\u001a\u00020\u001c2\u0008\u0010\u001d\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u001e\u001a\u00020\u001fH\u00d6\u0001J\t\u0010 \u001a\u00020\u0005H\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u0011\u0010\t\u001a\u00020\n\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000fR\u0011\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013R\u0011\u0010\u0006\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u0013\u00a8\u0006!"
    }
    d2 = {
        "Lcom/danbamitale/epmslib/entities/AccountBalance;",
        "",
        "accountType",
        "Lcom/danbamitale/epmslib/utils/IsoAccountType;",
        "amountType",
        "",
        "currencyCode",
        "amountSign",
        "",
        "amount",
        "",
        "(Lcom/danbamitale/epmslib/utils/IsoAccountType;Ljava/lang/String;Ljava/lang/String;CJ)V",
        "getAccountType",
        "()Lcom/danbamitale/epmslib/utils/IsoAccountType;",
        "getAmount",
        "()J",
        "getAmountSign",
        "()C",
        "getAmountType",
        "()Ljava/lang/String;",
        "getCurrencyCode",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "copy",
        "equals",
        "",
        "other",
        "hashCode",
        "",
        "toString",
        "epmslib_release"
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
.field private final accountType:Lcom/danbamitale/epmslib/utils/IsoAccountType;

.field private final amount:J

.field private final amountSign:C

.field private final amountType:Ljava/lang/String;

.field private final currencyCode:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/danbamitale/epmslib/utils/IsoAccountType;Ljava/lang/String;Ljava/lang/String;CJ)V
    .locals 1
    .param p1, "accountType"    # Lcom/danbamitale/epmslib/utils/IsoAccountType;
    .param p2, "amountType"    # Ljava/lang/String;
    .param p3, "currencyCode"    # Ljava/lang/String;
    .param p4, "amountSign"    # C
    .param p5, "amount"    # J

    const-string v0, "accountType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "amountType"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "currencyCode"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    iput-object p1, p0, Lcom/danbamitale/epmslib/entities/AccountBalance;->accountType:Lcom/danbamitale/epmslib/utils/IsoAccountType;

    .line 92
    iput-object p2, p0, Lcom/danbamitale/epmslib/entities/AccountBalance;->amountType:Ljava/lang/String;

    .line 93
    iput-object p3, p0, Lcom/danbamitale/epmslib/entities/AccountBalance;->currencyCode:Ljava/lang/String;

    .line 94
    iput-char p4, p0, Lcom/danbamitale/epmslib/entities/AccountBalance;->amountSign:C

    .line 95
    iput-wide p5, p0, Lcom/danbamitale/epmslib/entities/AccountBalance;->amount:J

    .line 90
    return-void
.end method

.method public static synthetic copy$default(Lcom/danbamitale/epmslib/entities/AccountBalance;Lcom/danbamitale/epmslib/utils/IsoAccountType;Ljava/lang/String;Ljava/lang/String;CJILjava/lang/Object;)Lcom/danbamitale/epmslib/entities/AccountBalance;
    .locals 4

    and-int/lit8 p8, p7, 0x1

    if-eqz p8, :cond_0

    iget-object p1, p0, Lcom/danbamitale/epmslib/entities/AccountBalance;->accountType:Lcom/danbamitale/epmslib/utils/IsoAccountType;

    :cond_0
    and-int/lit8 p8, p7, 0x2

    if-eqz p8, :cond_1

    iget-object p2, p0, Lcom/danbamitale/epmslib/entities/AccountBalance;->amountType:Ljava/lang/String;

    :cond_1
    move-object p8, p2

    and-int/lit8 p2, p7, 0x4

    if-eqz p2, :cond_2

    iget-object p3, p0, Lcom/danbamitale/epmslib/entities/AccountBalance;->currencyCode:Ljava/lang/String;

    :cond_2
    move-object v0, p3

    and-int/lit8 p2, p7, 0x8

    if-eqz p2, :cond_3

    iget-char p4, p0, Lcom/danbamitale/epmslib/entities/AccountBalance;->amountSign:C

    :cond_3
    move v1, p4

    and-int/lit8 p2, p7, 0x10

    if-eqz p2, :cond_4

    iget-wide p5, p0, Lcom/danbamitale/epmslib/entities/AccountBalance;->amount:J

    :cond_4
    move-wide v2, p5

    move-object p2, p0

    move-object p3, p1

    move-object p4, p8

    move-object p5, v0

    move p6, v1

    move-wide p7, v2

    invoke-virtual/range {p2 .. p8}, Lcom/danbamitale/epmslib/entities/AccountBalance;->copy(Lcom/danbamitale/epmslib/utils/IsoAccountType;Ljava/lang/String;Ljava/lang/String;CJ)Lcom/danbamitale/epmslib/entities/AccountBalance;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lcom/danbamitale/epmslib/utils/IsoAccountType;
    .locals 1

    iget-object v0, p0, Lcom/danbamitale/epmslib/entities/AccountBalance;->accountType:Lcom/danbamitale/epmslib/utils/IsoAccountType;

    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/danbamitale/epmslib/entities/AccountBalance;->amountType:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/danbamitale/epmslib/entities/AccountBalance;->currencyCode:Ljava/lang/String;

    return-object v0
.end method

.method public final component4()C
    .locals 1

    iget-char v0, p0, Lcom/danbamitale/epmslib/entities/AccountBalance;->amountSign:C

    return v0
.end method

.method public final component5()J
    .locals 2

    iget-wide v0, p0, Lcom/danbamitale/epmslib/entities/AccountBalance;->amount:J

    return-wide v0
.end method

.method public final copy(Lcom/danbamitale/epmslib/utils/IsoAccountType;Ljava/lang/String;Ljava/lang/String;CJ)Lcom/danbamitale/epmslib/entities/AccountBalance;
    .locals 8

    const-string v0, "accountType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "amountType"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "currencyCode"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/danbamitale/epmslib/entities/AccountBalance;

    move-object v1, v0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move-wide v6, p5

    invoke-direct/range {v1 .. v7}, Lcom/danbamitale/epmslib/entities/AccountBalance;-><init>(Lcom/danbamitale/epmslib/utils/IsoAccountType;Ljava/lang/String;Ljava/lang/String;CJ)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/danbamitale/epmslib/entities/AccountBalance;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/danbamitale/epmslib/entities/AccountBalance;

    iget-object v3, p0, Lcom/danbamitale/epmslib/entities/AccountBalance;->accountType:Lcom/danbamitale/epmslib/utils/IsoAccountType;

    iget-object v4, v1, Lcom/danbamitale/epmslib/entities/AccountBalance;->accountType:Lcom/danbamitale/epmslib/utils/IsoAccountType;

    if-eq v3, v4, :cond_2

    return v2

    :cond_2
    iget-object v3, p0, Lcom/danbamitale/epmslib/entities/AccountBalance;->amountType:Ljava/lang/String;

    iget-object v4, v1, Lcom/danbamitale/epmslib/entities/AccountBalance;->amountType:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    return v2

    :cond_3
    iget-object v3, p0, Lcom/danbamitale/epmslib/entities/AccountBalance;->currencyCode:Ljava/lang/String;

    iget-object v4, v1, Lcom/danbamitale/epmslib/entities/AccountBalance;->currencyCode:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    return v2

    :cond_4
    iget-char v3, p0, Lcom/danbamitale/epmslib/entities/AccountBalance;->amountSign:C

    iget-char v4, v1, Lcom/danbamitale/epmslib/entities/AccountBalance;->amountSign:C

    if-eq v3, v4, :cond_5

    return v2

    :cond_5
    iget-wide v3, p0, Lcom/danbamitale/epmslib/entities/AccountBalance;->amount:J

    iget-wide v5, v1, Lcom/danbamitale/epmslib/entities/AccountBalance;->amount:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_6

    return v2

    :cond_6
    return v0
.end method

.method public final getAccountType()Lcom/danbamitale/epmslib/utils/IsoAccountType;
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/danbamitale/epmslib/entities/AccountBalance;->accountType:Lcom/danbamitale/epmslib/utils/IsoAccountType;

    return-object v0
.end method

.method public final getAmount()J
    .locals 2

    .line 95
    iget-wide v0, p0, Lcom/danbamitale/epmslib/entities/AccountBalance;->amount:J

    return-wide v0
.end method

.method public final getAmountSign()C
    .locals 1

    .line 94
    iget-char v0, p0, Lcom/danbamitale/epmslib/entities/AccountBalance;->amountSign:C

    return v0
.end method

.method public final getAmountType()Ljava/lang/String;
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/danbamitale/epmslib/entities/AccountBalance;->amountType:Ljava/lang/String;

    return-object v0
.end method

.method public final getCurrencyCode()Ljava/lang/String;
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/danbamitale/epmslib/entities/AccountBalance;->currencyCode:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    iget-object v0, p0, Lcom/danbamitale/epmslib/entities/AccountBalance;->accountType:Lcom/danbamitale/epmslib/utils/IsoAccountType;

    invoke-virtual {v0}, Lcom/danbamitale/epmslib/utils/IsoAccountType;->hashCode()I

    move-result v0

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/danbamitale/epmslib/entities/AccountBalance;->amountType:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lcom/danbamitale/epmslib/entities/AccountBalance;->currencyCode:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-char v2, p0, Lcom/danbamitale/epmslib/entities/AccountBalance;->amountSign:C

    invoke-static {v2}, Ljava/lang/Character;->hashCode(C)I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-wide v2, p0, Lcom/danbamitale/epmslib/entities/AccountBalance;->amount:J

    invoke-static {v2, v3}, Ljava/lang/Long;->hashCode(J)I

    move-result v2

    add-int/2addr v0, v2

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AccountBalance(accountType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/danbamitale/epmslib/entities/AccountBalance;->accountType:Lcom/danbamitale/epmslib/utils/IsoAccountType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", amountType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/danbamitale/epmslib/entities/AccountBalance;->amountType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", currencyCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/danbamitale/epmslib/entities/AccountBalance;->currencyCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", amountSign="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-char v1, p0, Lcom/danbamitale/epmslib/entities/AccountBalance;->amountSign:C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", amount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/danbamitale/epmslib/entities/AccountBalance;->amount:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
