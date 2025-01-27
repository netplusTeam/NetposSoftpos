.class public Lcom/sleepycat/compat/DbCompat$OpWriteOptions;
.super Ljava/lang/Object;
.source "DbCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/compat/DbCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OpWriteOptions"
.end annotation


# static fields
.field public static final EMPTY:Lcom/sleepycat/compat/DbCompat$OpWriteOptions;


# instance fields
.field public final jeOptions:Lcom/sleepycat/je/WriteOptions;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 695
    new-instance v0, Lcom/sleepycat/compat/DbCompat$OpWriteOptions;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sleepycat/compat/DbCompat$OpWriteOptions;-><init>(Lcom/sleepycat/je/WriteOptions;)V

    sput-object v0, Lcom/sleepycat/compat/DbCompat$OpWriteOptions;->EMPTY:Lcom/sleepycat/compat/DbCompat$OpWriteOptions;

    return-void
.end method

.method private constructor <init>(Lcom/sleepycat/je/WriteOptions;)V
    .locals 0
    .param p1, "options"    # Lcom/sleepycat/je/WriteOptions;

    .line 700
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 701
    iput-object p1, p0, Lcom/sleepycat/compat/DbCompat$OpWriteOptions;->jeOptions:Lcom/sleepycat/je/WriteOptions;

    .line 702
    return-void
.end method

.method public static make(Lcom/sleepycat/je/WriteOptions;)Lcom/sleepycat/compat/DbCompat$OpWriteOptions;
    .locals 1
    .param p0, "options"    # Lcom/sleepycat/je/WriteOptions;

    .line 705
    if-eqz p0, :cond_0

    new-instance v0, Lcom/sleepycat/compat/DbCompat$OpWriteOptions;

    invoke-direct {v0, p0}, Lcom/sleepycat/compat/DbCompat$OpWriteOptions;-><init>(Lcom/sleepycat/je/WriteOptions;)V

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/sleepycat/compat/DbCompat$OpWriteOptions;->EMPTY:Lcom/sleepycat/compat/DbCompat$OpWriteOptions;

    :goto_0
    return-object v0
.end method
