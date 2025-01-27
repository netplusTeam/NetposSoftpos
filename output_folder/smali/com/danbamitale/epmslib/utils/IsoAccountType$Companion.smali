.class public final Lcom/danbamitale/epmslib/utils/IsoAccountType$Companion;
.super Ljava/lang/Object;
.source "IsoAccountType.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/danbamitale/epmslib/utils/IsoAccountType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006J\u000e\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0008\u001a\u00020\t\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/danbamitale/epmslib/utils/IsoAccountType$Companion;",
        "",
        "()V",
        "parseIntAccountType",
        "Lcom/danbamitale/epmslib/utils/IsoAccountType;",
        "type",
        "",
        "parseStringAccountType",
        "acctType",
        "",
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


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/danbamitale/epmslib/utils/IsoAccountType$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final parseIntAccountType(I)Lcom/danbamitale/epmslib/utils/IsoAccountType;
    .locals 1
    .param p1, "type"    # I

    .line 22
    sparse-switch p1, :sswitch_data_0

    .line 34
    sget-object v0, Lcom/danbamitale/epmslib/utils/IsoAccountType;->DEFAULT_UNSPECIFIED:Lcom/danbamitale/epmslib/utils/IsoAccountType;

    goto :goto_0

    .line 32
    :sswitch_0
    sget-object v0, Lcom/danbamitale/epmslib/utils/IsoAccountType;->BONUS_ACCOUNT:Lcom/danbamitale/epmslib/utils/IsoAccountType;

    goto :goto_0

    .line 31
    :sswitch_1
    sget-object v0, Lcom/danbamitale/epmslib/utils/IsoAccountType;->INVESTMENT_ACCOUNT:Lcom/danbamitale/epmslib/utils/IsoAccountType;

    goto :goto_0

    .line 29
    :sswitch_2
    sget-object v0, Lcom/danbamitale/epmslib/utils/IsoAccountType;->UNIVERSAL_ACCOUNT:Lcom/danbamitale/epmslib/utils/IsoAccountType;

    goto :goto_0

    .line 27
    :sswitch_3
    sget-object v0, Lcom/danbamitale/epmslib/utils/IsoAccountType;->CREDIT:Lcom/danbamitale/epmslib/utils/IsoAccountType;

    goto :goto_0

    .line 25
    :sswitch_4
    sget-object v0, Lcom/danbamitale/epmslib/utils/IsoAccountType;->CURRENT:Lcom/danbamitale/epmslib/utils/IsoAccountType;

    goto :goto_0

    .line 23
    :sswitch_5
    sget-object v0, Lcom/danbamitale/epmslib/utils/IsoAccountType;->SAVINGS:Lcom/danbamitale/epmslib/utils/IsoAccountType;

    .line 35
    :goto_0
    return-object v0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_5
        0x2 -> :sswitch_4
        0x3 -> :sswitch_3
        0x4 -> :sswitch_2
        0x5 -> :sswitch_1
        0x9 -> :sswitch_0
        0xa -> :sswitch_5
        0x14 -> :sswitch_4
        0x1e -> :sswitch_3
        0x28 -> :sswitch_2
        0x32 -> :sswitch_1
        0x5b -> :sswitch_0
    .end sparse-switch
.end method

.method public final parseStringAccountType(Ljava/lang/String;)Lcom/danbamitale/epmslib/utils/IsoAccountType;
    .locals 2
    .param p1, "acctType"    # Ljava/lang/String;

    const-string v0, "acctType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "this as java.lang.String).toLowerCase()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :goto_0
    goto :goto_1

    :sswitch_0
    const-string v1, "investment"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 17
    :cond_0
    sget-object v0, Lcom/danbamitale/epmslib/utils/IsoAccountType;->INVESTMENT_ACCOUNT:Lcom/danbamitale/epmslib/utils/IsoAccountType;

    goto :goto_2

    .line 12
    :sswitch_1
    const-string/jumbo v1, "savings"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :sswitch_2
    const-string v1, "current"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 14
    :cond_1
    sget-object v0, Lcom/danbamitale/epmslib/utils/IsoAccountType;->CURRENT:Lcom/danbamitale/epmslib/utils/IsoAccountType;

    goto :goto_2

    .line 12
    :sswitch_3
    const-string v1, "bonus"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    .line 18
    :cond_2
    sget-object v0, Lcom/danbamitale/epmslib/utils/IsoAccountType;->BONUS_ACCOUNT:Lcom/danbamitale/epmslib/utils/IsoAccountType;

    goto :goto_2

    .line 12
    :sswitch_4
    const-string/jumbo v1, "universal"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    .line 16
    :cond_3
    sget-object v0, Lcom/danbamitale/epmslib/utils/IsoAccountType;->UNIVERSAL_ACCOUNT:Lcom/danbamitale/epmslib/utils/IsoAccountType;

    goto :goto_2

    .line 12
    :sswitch_5
    const-string/jumbo v1, "saving"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    .line 13
    :cond_4
    sget-object v0, Lcom/danbamitale/epmslib/utils/IsoAccountType;->SAVINGS:Lcom/danbamitale/epmslib/utils/IsoAccountType;

    goto :goto_2

    .line 12
    :sswitch_6
    const-string v1, "credit"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_0

    .line 15
    :cond_5
    sget-object v0, Lcom/danbamitale/epmslib/utils/IsoAccountType;->CREDIT:Lcom/danbamitale/epmslib/utils/IsoAccountType;

    goto :goto_2

    .line 19
    :goto_1
    sget-object v0, Lcom/danbamitale/epmslib/utils/IsoAccountType;->DEFAULT_UNSPECIFIED:Lcom/danbamitale/epmslib/utils/IsoAccountType;

    .line 20
    :goto_2
    return-object v0

    :sswitch_data_0
    .sparse-switch
        -0x509a5507 -> :sswitch_6
        -0x36348d06 -> :sswitch_5
        -0x186901b5 -> :sswitch_4
        0x599201f -> :sswitch_3
        0x432bbd79 -> :sswitch_2
        0x6fa2ecb9 -> :sswitch_1
        0x72fa32d3 -> :sswitch_0
    .end sparse-switch
.end method
