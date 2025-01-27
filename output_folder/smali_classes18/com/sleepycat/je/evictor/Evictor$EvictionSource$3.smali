.class final enum Lcom/sleepycat/je/evictor/Evictor$EvictionSource$3;
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

    .line 581
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/sleepycat/je/evictor/Evictor$EvictionSource;-><init>(Ljava/lang/String;ILcom/sleepycat/je/evictor/Evictor$1;)V

    return-void
.end method


# virtual methods
.method getDesc()Ljava/lang/String;
    .locals 1

    .line 586
    const-string v0, "Number of bytes evicted in the application thread because the cache is over budget."

    return-object v0
.end method

.method getName()Ljava/lang/String;
    .locals 1

    .line 583
    const-string v0, "nBytesEvictedCRITICAL"

    return-object v0
.end method
