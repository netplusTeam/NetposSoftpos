.class Lcom/sleepycat/je/incomp/INCompressor$BINSearch;
.super Ljava/lang/Object;
.source "INCompressor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/incomp/INCompressor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BINSearch"
.end annotation


# instance fields
.field public bin:Lcom/sleepycat/je/tree/BIN;

.field public db:Lcom/sleepycat/je/dbi/DatabaseImpl;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 654
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sleepycat/je/incomp/INCompressor$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sleepycat/je/incomp/INCompressor$1;

    .line 654
    invoke-direct {p0}, Lcom/sleepycat/je/incomp/INCompressor$BINSearch;-><init>()V

    return-void
.end method
