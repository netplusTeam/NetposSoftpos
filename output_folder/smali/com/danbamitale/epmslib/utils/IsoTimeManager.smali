.class public final Lcom/danbamitale/epmslib/utils/IsoTimeManager;
.super Ljava/lang/Object;
.source "IsoTimeManager.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/danbamitale/epmslib/utils/IsoTimeManager$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u0000 \u000f2\u00020\u0001:\u0001\u000fB\u0005\u00a2\u0006\u0002\u0010\u0002R\u0011\u0010\u0003\u001a\u00020\u00048F\u00a2\u0006\u0006\u001a\u0004\u0008\u0005\u0010\u0006R\u0011\u0010\u0007\u001a\u00020\u00048F\u00a2\u0006\u0006\u001a\u0004\u0008\u0008\u0010\u0006R\u000e\u0010\t\u001a\u00020\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u000b\u001a\u00020\u00048F\u00a2\u0006\u0006\u001a\u0004\u0008\u000c\u0010\u0006R\u0011\u0010\r\u001a\u00020\u00048F\u00a2\u0006\u0006\u001a\u0004\u0008\u000e\u0010\u0006\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/danbamitale/epmslib/utils/IsoTimeManager;",
        "",
        "()V",
        "fullDate",
        "",
        "getFullDate",
        "()Ljava/lang/String;",
        "longDate",
        "getLongDate",
        "now",
        "Ljava/util/Date;",
        "shortDate",
        "getShortDate",
        "time",
        "getTime",
        "Companion",
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


# static fields
.field public static final Companion:Lcom/danbamitale/epmslib/utils/IsoTimeManager$Companion;

.field private static final FULL_DATE_TIME:Ljava/lang/String;

.field private static final LONG_DATE:Ljava/lang/String;

.field private static final LONG_TIME:Ljava/lang/String;

.field private static final SHORT_DATE:Ljava/lang/String;


# instance fields
.field private final now:Ljava/util/Date;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/danbamitale/epmslib/utils/IsoTimeManager$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/danbamitale/epmslib/utils/IsoTimeManager$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/danbamitale/epmslib/utils/IsoTimeManager;->Companion:Lcom/danbamitale/epmslib/utils/IsoTimeManager$Companion;

    .line 23
    const-string v0, "MMddHHmmss"

    sput-object v0, Lcom/danbamitale/epmslib/utils/IsoTimeManager;->LONG_DATE:Ljava/lang/String;

    .line 24
    const-string v0, "MMdd"

    sput-object v0, Lcom/danbamitale/epmslib/utils/IsoTimeManager;->SHORT_DATE:Ljava/lang/String;

    .line 25
    const-string v0, "HHmmss"

    sput-object v0, Lcom/danbamitale/epmslib/utils/IsoTimeManager;->LONG_TIME:Ljava/lang/String;

    .line 26
    const-string/jumbo v0, "yyyyMMddHHmmss"

    sput-object v0, Lcom/danbamitale/epmslib/utils/IsoTimeManager;->FULL_DATE_TIME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    new-instance v0, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    iput-object v0, p0, Lcom/danbamitale/epmslib/utils/IsoTimeManager;->now:Ljava/util/Date;

    .line 6
    return-void
.end method


# virtual methods
.method public final getFullDate()Ljava/lang/String;
    .locals 3

    .line 20
    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v1, Lcom/danbamitale/epmslib/utils/IsoTimeManager;->FULL_DATE_TIME:Ljava/lang/String;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iget-object v1, p0, Lcom/danbamitale/epmslib/utils/IsoTimeManager;->now:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "SimpleDateFormat(FULL_DA\u2026getDefault()).format(now)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getLongDate()Ljava/lang/String;
    .locals 3

    .line 11
    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v1, Lcom/danbamitale/epmslib/utils/IsoTimeManager;->LONG_DATE:Ljava/lang/String;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iget-object v1, p0, Lcom/danbamitale/epmslib/utils/IsoTimeManager;->now:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "SimpleDateFormat(LONG_DA\u2026getDefault()).format(now)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getShortDate()Ljava/lang/String;
    .locals 3

    .line 14
    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v1, Lcom/danbamitale/epmslib/utils/IsoTimeManager;->SHORT_DATE:Ljava/lang/String;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iget-object v1, p0, Lcom/danbamitale/epmslib/utils/IsoTimeManager;->now:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "SimpleDateFormat(SHORT_D\u2026getDefault()).format(now)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getTime()Ljava/lang/String;
    .locals 3

    .line 17
    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v1, Lcom/danbamitale/epmslib/utils/IsoTimeManager;->LONG_TIME:Ljava/lang/String;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iget-object v1, p0, Lcom/danbamitale/epmslib/utils/IsoTimeManager;->now:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "SimpleDateFormat(LONG_TI\u2026getDefault()).format(now)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method
