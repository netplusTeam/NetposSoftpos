.class Lcom/sleepycat/je/cleaner/DataEraser$ShutdownRequestedException;
.super Ljava/lang/RuntimeException;
.source "DataEraser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/cleaner/DataEraser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ShutdownRequestedException"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1972
    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sleepycat/je/cleaner/DataEraser$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sleepycat/je/cleaner/DataEraser$1;

    .line 1972
    invoke-direct {p0}, Lcom/sleepycat/je/cleaner/DataEraser$ShutdownRequestedException;-><init>()V

    return-void
.end method
