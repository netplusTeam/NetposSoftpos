.class public Lch/qos/logback/classic/spi/PlatformInfo;
.super Ljava/lang/Object;
.source "PlatformInfo.java"


# static fields
.field private static final UNINITIALIZED:I = -0x1

.field private static hasJMXObjectName:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 25
    const/4 v0, -0x1

    sput v0, Lch/qos/logback/classic/spi/PlatformInfo;->hasJMXObjectName:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static hasJMXObjectName()Z
    .locals 4

    .line 28
    sget v0, Lch/qos/logback/classic/spi/PlatformInfo;->hasJMXObjectName:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-ne v0, v3, :cond_0

    .line 30
    :try_start_0
    const-string v0, "javax.management.ObjectName"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 31
    sput v2, Lch/qos/logback/classic/spi/PlatformInfo;->hasJMXObjectName:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    goto :goto_0

    .line 32
    :catchall_0
    move-exception v0

    .line 33
    .local v0, "e":Ljava/lang/Throwable;
    sput v1, Lch/qos/logback/classic/spi/PlatformInfo;->hasJMXObjectName:I

    .line 36
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_0
    :goto_0
    sget v0, Lch/qos/logback/classic/spi/PlatformInfo;->hasJMXObjectName:I

    if-ne v0, v2, :cond_1

    move v1, v2

    :cond_1
    return v1
.end method
