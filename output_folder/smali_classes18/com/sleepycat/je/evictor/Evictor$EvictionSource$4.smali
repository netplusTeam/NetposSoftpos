.class final enum Lcom/sleepycat/je/evictor/Evictor$EvictionSource$4;
.super Lcom/sleepycat/je/evictor/Evictor$EvictionSource;
.source "Evictor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/evictor/Evictor$EvictionSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .line 589
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/sleepycat/je/evictor/Evictor$EvictionSource;-><init>(Ljava/lang/String;ILcom/sleepycat/je/evictor/Evictor$1;)V

    return-void
.end method


# virtual methods
.method getDesc()Ljava/lang/String;
    .locals 1

    .line 594
    const-string v0, "Number of bytes evicted by operations for which CacheMode.EVICT_BIN is specified."

    return-object v0
.end method

.method getName()Ljava/lang/String;
    .locals 1

    .line 591
    const-string v0, "nBytesEvictedCACHEMODE"

    return-object v0
.end method
