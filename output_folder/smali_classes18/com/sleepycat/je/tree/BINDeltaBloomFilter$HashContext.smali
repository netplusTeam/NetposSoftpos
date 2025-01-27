.class public Lcom/sleepycat/je/tree/BINDeltaBloomFilter$HashContext;
.super Ljava/lang/Object;
.source "BINDeltaBloomFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/tree/BINDeltaBloomFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HashContext"
.end annotation


# instance fields
.field public hashes:[I

.field public initFNVvalue:J

.field public rng:Ljava/util/Random;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const/4 v0, 0x3

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/sleepycat/je/tree/BINDeltaBloomFilter$HashContext;->hashes:[I

    .line 47
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/je/tree/BINDeltaBloomFilter$HashContext;->rng:Ljava/util/Random;

    .line 48
    const-wide v0, 0x811c9dc5L

    iput-wide v0, p0, Lcom/sleepycat/je/tree/BINDeltaBloomFilter$HashContext;->initFNVvalue:J

    .line 49
    return-void
.end method


# virtual methods
.method hashKeyPrefix([B)V
    .locals 2
    .param p1, "prefix"    # [B

    .line 52
    iget-wide v0, p0, Lcom/sleepycat/je/tree/BINDeltaBloomFilter$HashContext;->initFNVvalue:J

    invoke-static {p1, v0, v1}, Lcom/sleepycat/je/tree/BINDeltaBloomFilter;->access$000([BJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sleepycat/je/tree/BINDeltaBloomFilter$HashContext;->initFNVvalue:J

    .line 53
    return-void
.end method
