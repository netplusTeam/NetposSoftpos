.class Lcom/sleepycat/je/cleaner/Cleaner$EnvLockedException;
.super Ljava/lang/Exception;
.source "Cleaner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/cleaner/Cleaner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EnvLockedException"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 910
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sleepycat/je/cleaner/Cleaner$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sleepycat/je/cleaner/Cleaner$1;

    .line 910
    invoke-direct {p0}, Lcom/sleepycat/je/cleaner/Cleaner$EnvLockedException;-><init>()V

    return-void
.end method
