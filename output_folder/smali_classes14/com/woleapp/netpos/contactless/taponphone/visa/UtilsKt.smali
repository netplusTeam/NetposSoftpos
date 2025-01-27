.class public final Lcom/woleapp/netpos/contactless/taponphone/visa/UtilsKt;
.super Ljava/lang/Object;
.source "Utils.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0000\n\u0002\u0010\u0011\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\"\u0019\u0010\u0000\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0001\u00a2\u0006\n\n\u0002\u0010\u0005\u001a\u0004\u0008\u0003\u0010\u0004\"\u001f\u0010\u0006\u001a\u0010\u0012\u000c\u0012\n \u0008*\u0004\u0018\u00010\u00020\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\n\u00a8\u0006\u000b"
    }
    d2 = {
        "REQUIRED_TAGS",
        "",
        "",
        "getREQUIRED_TAGS",
        "()[Ljava/lang/String;",
        "[Ljava/lang/String;",
        "supportedAids",
        "Ljava/util/ArrayList;",
        "kotlin.jvm.PlatformType",
        "getSupportedAids",
        "()Ljava/util/ArrayList;",
        "app_fcmbeasypayDebug"
    }
    k = 0x2
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field private static final REQUIRED_TAGS:[Ljava/lang/String;

.field private static final supportedAids:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 27

    .line 7
    new-instance v0, Ljava/util/ArrayList;

    .line 9
    nop

    .line 10
    const-string v1, "A0000000031010"

    const-string v2, "A0000000041010"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    .line 9
    nop

    .line 8
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    .line 7
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/woleapp/netpos/contactless/taponphone/visa/UtilsKt;->supportedAids:Ljava/util/ArrayList;

    .line 14
    nop

    .line 15
    nop

    .line 16
    nop

    .line 15
    nop

    .line 17
    nop

    .line 15
    nop

    .line 18
    nop

    .line 15
    nop

    .line 19
    nop

    .line 15
    nop

    .line 20
    nop

    .line 15
    nop

    .line 21
    nop

    .line 15
    nop

    .line 22
    nop

    .line 15
    nop

    .line 23
    nop

    .line 15
    nop

    .line 24
    nop

    .line 15
    nop

    .line 25
    nop

    .line 15
    nop

    .line 26
    nop

    .line 15
    nop

    .line 27
    nop

    .line 15
    nop

    .line 28
    nop

    .line 15
    nop

    .line 29
    nop

    .line 15
    nop

    .line 30
    nop

    .line 15
    nop

    .line 31
    nop

    .line 15
    nop

    .line 32
    nop

    .line 15
    nop

    .line 33
    nop

    .line 15
    nop

    .line 34
    nop

    .line 15
    nop

    .line 35
    nop

    .line 15
    nop

    .line 36
    nop

    .line 15
    nop

    .line 37
    nop

    .line 15
    nop

    .line 38
    nop

    .line 15
    nop

    .line 39
    const-string v2, "9F26"

    const-string v3, "9F27"

    const-string v4, "9F10"

    const-string v5, "9F37"

    const-string v6, "9F36"

    const-string v7, "95"

    const-string v8, "9A"

    const-string v9, "9C"

    const-string v10, "9F02"

    const-string v11, "5F2A"

    const-string v12, "82"

    const-string v13, "9F1A"

    const-string v14, "9F34"

    const-string v15, "9F33"

    const-string v16, "9F35"

    const-string v17, "9F1E"

    const-string v18, "84"

    const-string v19, "9F09"

    const-string v20, "9F03"

    const-string v21, "5F34"

    const-string v22, "8E"

    const-string v23, "57"

    const-string v24, "5A"

    const-string v25, "5F24"

    const-string v26, "5F20"

    filled-new-array/range {v2 .. v26}, [Ljava/lang/String;

    move-result-object v0

    .line 15
    nop

    .line 14
    sput-object v0, Lcom/woleapp/netpos/contactless/taponphone/visa/UtilsKt;->REQUIRED_TAGS:[Ljava/lang/String;

    return-void
.end method

.method public static final getREQUIRED_TAGS()[Ljava/lang/String;
    .locals 1

    .line 14
    sget-object v0, Lcom/woleapp/netpos/contactless/taponphone/visa/UtilsKt;->REQUIRED_TAGS:[Ljava/lang/String;

    return-object v0
.end method

.method public static final getSupportedAids()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 7
    sget-object v0, Lcom/woleapp/netpos/contactless/taponphone/visa/UtilsKt;->supportedAids:Ljava/util/ArrayList;

    return-object v0
.end method
