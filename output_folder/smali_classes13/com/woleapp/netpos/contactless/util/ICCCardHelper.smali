.class public final Lcom/woleapp/netpos/contactless/util/ICCCardHelper;
.super Ljava/lang/Object;
.source "CardExt.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0003\n\u0002\u0008\u001a\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u0086\u0008\u0018\u00002\u00020\u0001BA\u0012\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0008\u0012\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\n\u00a2\u0006\u0002\u0010\u000bJ\u000b\u0010\u001e\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000b\u0010\u001f\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000b\u0010 \u001a\u0004\u0018\u00010\u0006H\u00c6\u0003J\u000b\u0010!\u001a\u0004\u0018\u00010\u0008H\u00c6\u0003J\u000b\u0010\"\u001a\u0004\u0018\u00010\nH\u00c6\u0003JE\u0010#\u001a\u00020\u00002\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00082\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\nH\u00c6\u0001J\u0013\u0010$\u001a\u00020%2\u0008\u0010&\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\'\u001a\u00020(H\u00d6\u0001J\t\u0010)\u001a\u00020\u0003H\u00d6\u0001R\u001c\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000c\u0010\r\"\u0004\u0008\u000e\u0010\u000fR\u001c\u0010\u0007\u001a\u0004\u0018\u00010\u0008X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011\"\u0004\u0008\u0012\u0010\u0013R\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015\"\u0004\u0008\u0016\u0010\u0017R\u001c\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0018\u0010\u0015\"\u0004\u0008\u0019\u0010\u0017R\u001c\u0010\t\u001a\u0004\u0018\u00010\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001a\u0010\u001b\"\u0004\u0008\u001c\u0010\u001d\u00a8\u0006*"
    }
    d2 = {
        "Lcom/woleapp/netpos/contactless/util/ICCCardHelper;",
        "",
        "customerName",
        "",
        "cardScheme",
        "accountType",
        "Lcom/danbamitale/epmslib/utils/IsoAccountType;",
        "cardData",
        "Lcom/danbamitale/epmslib/entities/CardData;",
        "error",
        "",
        "(Ljava/lang/String;Ljava/lang/String;Lcom/danbamitale/epmslib/utils/IsoAccountType;Lcom/danbamitale/epmslib/entities/CardData;Ljava/lang/Throwable;)V",
        "getAccountType",
        "()Lcom/danbamitale/epmslib/utils/IsoAccountType;",
        "setAccountType",
        "(Lcom/danbamitale/epmslib/utils/IsoAccountType;)V",
        "getCardData",
        "()Lcom/danbamitale/epmslib/entities/CardData;",
        "setCardData",
        "(Lcom/danbamitale/epmslib/entities/CardData;)V",
        "getCardScheme",
        "()Ljava/lang/String;",
        "setCardScheme",
        "(Ljava/lang/String;)V",
        "getCustomerName",
        "setCustomerName",
        "getError",
        "()Ljava/lang/Throwable;",
        "setError",
        "(Ljava/lang/Throwable;)V",
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
.field private accountType:Lcom/danbamitale/epmslib/utils/IsoAccountType;

.field private cardData:Lcom/danbamitale/epmslib/entities/CardData;

.field private cardScheme:Ljava/lang/String;

.field private customerName:Ljava/lang/String;

.field private error:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>()V
    .locals 8

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x1f

    const/4 v7, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/woleapp/netpos/contactless/util/ICCCardHelper;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/danbamitale/epmslib/utils/IsoAccountType;Lcom/danbamitale/epmslib/entities/CardData;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/danbamitale/epmslib/utils/IsoAccountType;Lcom/danbamitale/epmslib/entities/CardData;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "customerName"    # Ljava/lang/String;
    .param p2, "cardScheme"    # Ljava/lang/String;
    .param p3, "accountType"    # Lcom/danbamitale/epmslib/utils/IsoAccountType;
    .param p4, "cardData"    # Lcom/danbamitale/epmslib/entities/CardData;
    .param p5, "error"    # Ljava/lang/Throwable;

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/woleapp/netpos/contactless/util/ICCCardHelper;->customerName:Ljava/lang/String;

    .line 25
    iput-object p2, p0, Lcom/woleapp/netpos/contactless/util/ICCCardHelper;->cardScheme:Ljava/lang/String;

    .line 26
    iput-object p3, p0, Lcom/woleapp/netpos/contactless/util/ICCCardHelper;->accountType:Lcom/danbamitale/epmslib/utils/IsoAccountType;

    .line 27
    iput-object p4, p0, Lcom/woleapp/netpos/contactless/util/ICCCardHelper;->cardData:Lcom/danbamitale/epmslib/entities/CardData;

    .line 28
    iput-object p5, p0, Lcom/woleapp/netpos/contactless/util/ICCCardHelper;->error:Ljava/lang/Throwable;

    .line 23
    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/danbamitale/epmslib/utils/IsoAccountType;Lcom/danbamitale/epmslib/entities/CardData;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 4

    .line 23
    and-int/lit8 p7, p6, 0x1

    const/4 v0, 0x0

    if-eqz p7, :cond_0

    .line 24
    move-object p7, v0

    goto :goto_0

    .line 23
    :cond_0
    move-object p7, p1

    :goto_0
    and-int/lit8 p1, p6, 0x2

    if-eqz p1, :cond_1

    .line 25
    move-object v1, v0

    goto :goto_1

    .line 23
    :cond_1
    move-object v1, p2

    :goto_1
    and-int/lit8 p1, p6, 0x4

    if-eqz p1, :cond_2

    .line 26
    move-object v2, v0

    goto :goto_2

    .line 23
    :cond_2
    move-object v2, p3

    :goto_2
    and-int/lit8 p1, p6, 0x8

    if-eqz p1, :cond_3

    .line 27
    move-object v3, v0

    goto :goto_3

    .line 23
    :cond_3
    move-object v3, p4

    :goto_3
    and-int/lit8 p1, p6, 0x10

    if-eqz p1, :cond_4

    .line 28
    move-object p6, v0

    goto :goto_4

    .line 23
    :cond_4
    move-object p6, p5

    :goto_4
    move-object p1, p0

    move-object p2, p7

    move-object p3, v1

    move-object p4, v2

    move-object p5, v3

    invoke-direct/range {p1 .. p6}, Lcom/woleapp/netpos/contactless/util/ICCCardHelper;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/danbamitale/epmslib/utils/IsoAccountType;Lcom/danbamitale/epmslib/entities/CardData;Ljava/lang/Throwable;)V

    .line 29
    return-void
.end method

.method public static synthetic copy$default(Lcom/woleapp/netpos/contactless/util/ICCCardHelper;Ljava/lang/String;Ljava/lang/String;Lcom/danbamitale/epmslib/utils/IsoAccountType;Lcom/danbamitale/epmslib/entities/CardData;Ljava/lang/Throwable;ILjava/lang/Object;)Lcom/woleapp/netpos/contactless/util/ICCCardHelper;
    .locals 3

    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_0

    iget-object p1, p0, Lcom/woleapp/netpos/contactless/util/ICCCardHelper;->customerName:Ljava/lang/String;

    :cond_0
    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_1

    iget-object p2, p0, Lcom/woleapp/netpos/contactless/util/ICCCardHelper;->cardScheme:Ljava/lang/String;

    :cond_1
    move-object p7, p2

    and-int/lit8 p2, p6, 0x4

    if-eqz p2, :cond_2

    iget-object p3, p0, Lcom/woleapp/netpos/contactless/util/ICCCardHelper;->accountType:Lcom/danbamitale/epmslib/utils/IsoAccountType;

    :cond_2
    move-object v0, p3

    and-int/lit8 p2, p6, 0x8

    if-eqz p2, :cond_3

    iget-object p4, p0, Lcom/woleapp/netpos/contactless/util/ICCCardHelper;->cardData:Lcom/danbamitale/epmslib/entities/CardData;

    :cond_3
    move-object v1, p4

    and-int/lit8 p2, p6, 0x10

    if-eqz p2, :cond_4

    iget-object p5, p0, Lcom/woleapp/netpos/contactless/util/ICCCardHelper;->error:Ljava/lang/Throwable;

    :cond_4
    move-object v2, p5

    move-object p2, p0

    move-object p3, p1

    move-object p4, p7

    move-object p5, v0

    move-object p6, v1

    move-object p7, v2

    invoke-virtual/range {p2 .. p7}, Lcom/woleapp/netpos/contactless/util/ICCCardHelper;->copy(Ljava/lang/String;Ljava/lang/String;Lcom/danbamitale/epmslib/utils/IsoAccountType;Lcom/danbamitale/epmslib/entities/CardData;Ljava/lang/Throwable;)Lcom/woleapp/netpos/contactless/util/ICCCardHelper;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/woleapp/netpos/contactless/util/ICCCardHelper;->customerName:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/woleapp/netpos/contactless/util/ICCCardHelper;->cardScheme:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()Lcom/danbamitale/epmslib/utils/IsoAccountType;
    .locals 1

    iget-object v0, p0, Lcom/woleapp/netpos/contactless/util/ICCCardHelper;->accountType:Lcom/danbamitale/epmslib/utils/IsoAccountType;

    return-object v0
.end method

.method public final component4()Lcom/danbamitale/epmslib/entities/CardData;
    .locals 1

    iget-object v0, p0, Lcom/woleapp/netpos/contactless/util/ICCCardHelper;->cardData:Lcom/danbamitale/epmslib/entities/CardData;

    return-object v0
.end method

.method public final component5()Ljava/lang/Throwable;
    .locals 1

    iget-object v0, p0, Lcom/woleapp/netpos/contactless/util/ICCCardHelper;->error:Ljava/lang/Throwable;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;Lcom/danbamitale/epmslib/utils/IsoAccountType;Lcom/danbamitale/epmslib/entities/CardData;Ljava/lang/Throwable;)Lcom/woleapp/netpos/contactless/util/ICCCardHelper;
    .locals 7

    new-instance v6, Lcom/woleapp/netpos/contactless/util/ICCCardHelper;

    move-object v0, v6

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/woleapp/netpos/contactless/util/ICCCardHelper;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/danbamitale/epmslib/utils/IsoAccountType;Lcom/danbamitale/epmslib/entities/CardData;Ljava/lang/Throwable;)V

    return-object v6
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/woleapp/netpos/contactless/util/ICCCardHelper;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/woleapp/netpos/contactless/util/ICCCardHelper;

    iget-object v3, p0, Lcom/woleapp/netpos/contactless/util/ICCCardHelper;->customerName:Ljava/lang/String;

    iget-object v4, v1, Lcom/woleapp/netpos/contactless/util/ICCCardHelper;->customerName:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    return v2

    :cond_2
    iget-object v3, p0, Lcom/woleapp/netpos/contactless/util/ICCCardHelper;->cardScheme:Ljava/lang/String;

    iget-object v4, v1, Lcom/woleapp/netpos/contactless/util/ICCCardHelper;->cardScheme:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    return v2

    :cond_3
    iget-object v3, p0, Lcom/woleapp/netpos/contactless/util/ICCCardHelper;->accountType:Lcom/danbamitale/epmslib/utils/IsoAccountType;

    iget-object v4, v1, Lcom/woleapp/netpos/contactless/util/ICCCardHelper;->accountType:Lcom/danbamitale/epmslib/utils/IsoAccountType;

    if-eq v3, v4, :cond_4

    return v2

    :cond_4
    iget-object v3, p0, Lcom/woleapp/netpos/contactless/util/ICCCardHelper;->cardData:Lcom/danbamitale/epmslib/entities/CardData;

    iget-object v4, v1, Lcom/woleapp/netpos/contactless/util/ICCCardHelper;->cardData:Lcom/danbamitale/epmslib/entities/CardData;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    return v2

    :cond_5
    iget-object v3, p0, Lcom/woleapp/netpos/contactless/util/ICCCardHelper;->error:Ljava/lang/Throwable;

    iget-object v1, v1, Lcom/woleapp/netpos/contactless/util/ICCCardHelper;->error:Ljava/lang/Throwable;

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    return v0
.end method

.method public final getAccountType()Lcom/danbamitale/epmslib/utils/IsoAccountType;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/util/ICCCardHelper;->accountType:Lcom/danbamitale/epmslib/utils/IsoAccountType;

    return-object v0
.end method

.method public final getCardData()Lcom/danbamitale/epmslib/entities/CardData;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/util/ICCCardHelper;->cardData:Lcom/danbamitale/epmslib/entities/CardData;

    return-object v0
.end method

.method public final getCardScheme()Ljava/lang/String;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/util/ICCCardHelper;->cardScheme:Ljava/lang/String;

    return-object v0
.end method

.method public final getCustomerName()Ljava/lang/String;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/util/ICCCardHelper;->customerName:Ljava/lang/String;

    return-object v0
.end method

.method public final getError()Ljava/lang/Throwable;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/util/ICCCardHelper;->error:Ljava/lang/Throwable;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    iget-object v0, p0, Lcom/woleapp/netpos/contactless/util/ICCCardHelper;->customerName:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v2, v0, 0x1f

    iget-object v3, p0, Lcom/woleapp/netpos/contactless/util/ICCCardHelper;->cardScheme:Ljava/lang/String;

    if-nez v3, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v2, v3

    mul-int/lit8 v0, v2, 0x1f

    iget-object v3, p0, Lcom/woleapp/netpos/contactless/util/ICCCardHelper;->accountType:Lcom/danbamitale/epmslib/utils/IsoAccountType;

    if-nez v3, :cond_2

    move v3, v1

    goto :goto_2

    :cond_2
    invoke-virtual {v3}, Lcom/danbamitale/epmslib/utils/IsoAccountType;->hashCode()I

    move-result v3

    :goto_2
    add-int/2addr v0, v3

    mul-int/lit8 v2, v0, 0x1f

    iget-object v3, p0, Lcom/woleapp/netpos/contactless/util/ICCCardHelper;->cardData:Lcom/danbamitale/epmslib/entities/CardData;

    if-nez v3, :cond_3

    move v3, v1

    goto :goto_3

    :cond_3
    invoke-virtual {v3}, Lcom/danbamitale/epmslib/entities/CardData;->hashCode()I

    move-result v3

    :goto_3
    add-int/2addr v2, v3

    mul-int/lit8 v0, v2, 0x1f

    iget-object v3, p0, Lcom/woleapp/netpos/contactless/util/ICCCardHelper;->error:Ljava/lang/Throwable;

    if-nez v3, :cond_4

    goto :goto_4

    :cond_4
    invoke-virtual {v3}, Ljava/lang/Throwable;->hashCode()I

    move-result v1

    :goto_4
    add-int/2addr v0, v1

    return v0
.end method

.method public final setAccountType(Lcom/danbamitale/epmslib/utils/IsoAccountType;)V
    .locals 0
    .param p1, "<set-?>"    # Lcom/danbamitale/epmslib/utils/IsoAccountType;

    .line 26
    iput-object p1, p0, Lcom/woleapp/netpos/contactless/util/ICCCardHelper;->accountType:Lcom/danbamitale/epmslib/utils/IsoAccountType;

    return-void
.end method

.method public final setCardData(Lcom/danbamitale/epmslib/entities/CardData;)V
    .locals 0
    .param p1, "<set-?>"    # Lcom/danbamitale/epmslib/entities/CardData;

    .line 27
    iput-object p1, p0, Lcom/woleapp/netpos/contactless/util/ICCCardHelper;->cardData:Lcom/danbamitale/epmslib/entities/CardData;

    return-void
.end method

.method public final setCardScheme(Ljava/lang/String;)V
    .locals 0
    .param p1, "<set-?>"    # Ljava/lang/String;

    .line 25
    iput-object p1, p0, Lcom/woleapp/netpos/contactless/util/ICCCardHelper;->cardScheme:Ljava/lang/String;

    return-void
.end method

.method public final setCustomerName(Ljava/lang/String;)V
    .locals 0
    .param p1, "<set-?>"    # Ljava/lang/String;

    .line 24
    iput-object p1, p0, Lcom/woleapp/netpos/contactless/util/ICCCardHelper;->customerName:Ljava/lang/String;

    return-void
.end method

.method public final setError(Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "<set-?>"    # Ljava/lang/Throwable;

    .line 28
    iput-object p1, p0, Lcom/woleapp/netpos/contactless/util/ICCCardHelper;->error:Ljava/lang/Throwable;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ICCCardHelper(customerName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/woleapp/netpos/contactless/util/ICCCardHelper;->customerName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", cardScheme="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/woleapp/netpos/contactless/util/ICCCardHelper;->cardScheme:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", accountType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/woleapp/netpos/contactless/util/ICCCardHelper;->accountType:Lcom/danbamitale/epmslib/utils/IsoAccountType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", cardData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/woleapp/netpos/contactless/util/ICCCardHelper;->cardData:Lcom/danbamitale/epmslib/entities/CardData;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", error="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/woleapp/netpos/contactless/util/ICCCardHelper;->error:Ljava/lang/Throwable;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
