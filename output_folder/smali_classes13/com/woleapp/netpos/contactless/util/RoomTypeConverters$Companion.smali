.class public final Lcom/woleapp/netpos/contactless/util/RoomTypeConverters$Companion;
.super Ljava/lang/Object;
.source "RoomTypeConverters.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/woleapp/netpos/contactless/util/RoomTypeConverters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0007J\u0010\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0008\u001a\u00020\u0004H\u0007J\u0010\u0010\t\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\u000bH\u0007J\u0010\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\u0008\u001a\u00020\u0004H\u0007\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/woleapp/netpos/contactless/util/RoomTypeConverters$Companion;",
        "",
        "()V",
        "convertIsoAccountEnumToString",
        "",
        "isoAccountType",
        "Lcom/danbamitale/epmslib/utils/IsoAccountType;",
        "convertIsoAccountStringToEnum",
        "value",
        "convertTransactionResponseEnumToString",
        "transactionType",
        "Lcom/danbamitale/epmslib/entities/TransactionType;",
        "convertTransactionResponseToEnum",
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

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/woleapp/netpos/contactless/util/RoomTypeConverters$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final convertIsoAccountEnumToString(Lcom/danbamitale/epmslib/utils/IsoAccountType;)Ljava/lang/String;
    .locals 1
    .param p1, "isoAccountType"    # Lcom/danbamitale/epmslib/utils/IsoAccountType;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "isoAccountType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-virtual {p1}, Lcom/danbamitale/epmslib/utils/IsoAccountType;->name()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final convertIsoAccountStringToEnum(Ljava/lang/String;)Lcom/danbamitale/epmslib/utils/IsoAccountType;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-static {p1}, Lcom/danbamitale/epmslib/utils/IsoAccountType;->valueOf(Ljava/lang/String;)Lcom/danbamitale/epmslib/utils/IsoAccountType;

    move-result-object v0

    return-object v0
.end method

.method public final convertTransactionResponseEnumToString(Lcom/danbamitale/epmslib/entities/TransactionType;)Ljava/lang/String;
    .locals 1
    .param p1, "transactionType"    # Lcom/danbamitale/epmslib/entities/TransactionType;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "transactionType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-virtual {p1}, Lcom/danbamitale/epmslib/entities/TransactionType;->name()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final convertTransactionResponseToEnum(Ljava/lang/String;)Lcom/danbamitale/epmslib/entities/TransactionType;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    invoke-static {p1}, Lcom/danbamitale/epmslib/entities/TransactionType;->valueOf(Ljava/lang/String;)Lcom/danbamitale/epmslib/entities/TransactionType;

    move-result-object v0

    return-object v0
.end method
