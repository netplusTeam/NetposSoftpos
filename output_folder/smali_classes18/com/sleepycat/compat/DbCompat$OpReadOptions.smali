.class public Lcom/sleepycat/compat/DbCompat$OpReadOptions;
.super Ljava/lang/Object;
.source "DbCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/compat/DbCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OpReadOptions"
.end annotation


# static fields
.field public static final EMPTY:Lcom/sleepycat/compat/DbCompat$OpReadOptions;


# instance fields
.field public final jeOptions:Lcom/sleepycat/je/ReadOptions;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 664
    new-instance v0, Lcom/sleepycat/compat/DbCompat$OpReadOptions;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sleepycat/compat/DbCompat$OpReadOptions;-><init>(Lcom/sleepycat/je/ReadOptions;)V

    sput-object v0, Lcom/sleepycat/compat/DbCompat$OpReadOptions;->EMPTY:Lcom/sleepycat/compat/DbCompat$OpReadOptions;

    return-void
.end method

.method private constructor <init>(Lcom/sleepycat/je/ReadOptions;)V
    .locals 0
    .param p1, "options"    # Lcom/sleepycat/je/ReadOptions;

    .line 669
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 670
    iput-object p1, p0, Lcom/sleepycat/compat/DbCompat$OpReadOptions;->jeOptions:Lcom/sleepycat/je/ReadOptions;

    .line 671
    return-void
.end method

.method public static make(Lcom/sleepycat/je/LockMode;)Lcom/sleepycat/compat/DbCompat$OpReadOptions;
    .locals 2
    .param p0, "lockMode"    # Lcom/sleepycat/je/LockMode;

    .line 683
    if-eqz p0, :cond_0

    new-instance v0, Lcom/sleepycat/compat/DbCompat$OpReadOptions;

    .line 684
    invoke-virtual {p0}, Lcom/sleepycat/je/LockMode;->toReadOptions()Lcom/sleepycat/je/ReadOptions;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sleepycat/compat/DbCompat$OpReadOptions;-><init>(Lcom/sleepycat/je/ReadOptions;)V

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/sleepycat/compat/DbCompat$OpReadOptions;->EMPTY:Lcom/sleepycat/compat/DbCompat$OpReadOptions;

    .line 683
    :goto_0
    return-object v0
.end method

.method public static make(Lcom/sleepycat/je/ReadOptions;)Lcom/sleepycat/compat/DbCompat$OpReadOptions;
    .locals 1
    .param p0, "options"    # Lcom/sleepycat/je/ReadOptions;

    .line 678
    if-eqz p0, :cond_0

    new-instance v0, Lcom/sleepycat/compat/DbCompat$OpReadOptions;

    invoke-direct {v0, p0}, Lcom/sleepycat/compat/DbCompat$OpReadOptions;-><init>(Lcom/sleepycat/je/ReadOptions;)V

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/sleepycat/compat/DbCompat$OpReadOptions;->EMPTY:Lcom/sleepycat/compat/DbCompat$OpReadOptions;

    :goto_0
    return-object v0
.end method


# virtual methods
.method public getLockMode()Lcom/sleepycat/je/LockMode;
    .locals 1

    .line 674
    iget-object v0, p0, Lcom/sleepycat/compat/DbCompat$OpReadOptions;->jeOptions:Lcom/sleepycat/je/ReadOptions;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sleepycat/je/ReadOptions;->getLockMode()Lcom/sleepycat/je/LockMode;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method
