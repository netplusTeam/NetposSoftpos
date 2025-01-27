.class public final Lcom/woleapp/netpos/contactless/util/RoomTypeConverters;
.super Ljava/lang/Object;
.source "RoomTypeConverters.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/woleapp/netpos/contactless/util/RoomTypeConverters$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\u0018\u0000 \u00032\u00020\u0001:\u0001\u0003B\u0005\u00a2\u0006\u0002\u0010\u0002\u00a8\u0006\u0004"
    }
    d2 = {
        "Lcom/woleapp/netpos/contactless/util/RoomTypeConverters;",
        "",
        "()V",
        "Companion",
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


# static fields
.field public static final Companion:Lcom/woleapp/netpos/contactless/util/RoomTypeConverters$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/woleapp/netpos/contactless/util/RoomTypeConverters$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/woleapp/netpos/contactless/util/RoomTypeConverters$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/woleapp/netpos/contactless/util/RoomTypeConverters;->Companion:Lcom/woleapp/netpos/contactless/util/RoomTypeConverters$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final convertIsoAccountEnumToString(Lcom/danbamitale/epmslib/utils/IsoAccountType;)Ljava/lang/String;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/woleapp/netpos/contactless/util/RoomTypeConverters;->Companion:Lcom/woleapp/netpos/contactless/util/RoomTypeConverters$Companion;

    invoke-virtual {v0, p0}, Lcom/woleapp/netpos/contactless/util/RoomTypeConverters$Companion;->convertIsoAccountEnumToString(Lcom/danbamitale/epmslib/utils/IsoAccountType;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final convertIsoAccountStringToEnum(Ljava/lang/String;)Lcom/danbamitale/epmslib/utils/IsoAccountType;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/woleapp/netpos/contactless/util/RoomTypeConverters;->Companion:Lcom/woleapp/netpos/contactless/util/RoomTypeConverters$Companion;

    invoke-virtual {v0, p0}, Lcom/woleapp/netpos/contactless/util/RoomTypeConverters$Companion;->convertIsoAccountStringToEnum(Ljava/lang/String;)Lcom/danbamitale/epmslib/utils/IsoAccountType;

    move-result-object v0

    return-object v0
.end method

.method public static final convertTransactionResponseEnumToString(Lcom/danbamitale/epmslib/entities/TransactionType;)Ljava/lang/String;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/woleapp/netpos/contactless/util/RoomTypeConverters;->Companion:Lcom/woleapp/netpos/contactless/util/RoomTypeConverters$Companion;

    invoke-virtual {v0, p0}, Lcom/woleapp/netpos/contactless/util/RoomTypeConverters$Companion;->convertTransactionResponseEnumToString(Lcom/danbamitale/epmslib/entities/TransactionType;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final convertTransactionResponseToEnum(Ljava/lang/String;)Lcom/danbamitale/epmslib/entities/TransactionType;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/woleapp/netpos/contactless/util/RoomTypeConverters;->Companion:Lcom/woleapp/netpos/contactless/util/RoomTypeConverters$Companion;

    invoke-virtual {v0, p0}, Lcom/woleapp/netpos/contactless/util/RoomTypeConverters$Companion;->convertTransactionResponseToEnum(Ljava/lang/String;)Lcom/danbamitale/epmslib/entities/TransactionType;

    move-result-object v0

    return-object v0
.end method
