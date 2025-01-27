.class abstract Lcom/sleepycat/je/rep/vlsn/VLSNIndex$VLSNScanner;
.super Ljava/lang/Object;
.source "VLSNIndex.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/rep/vlsn/VLSNIndex;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "VLSNScanner"
.end annotation


# instance fields
.field currentBucket:Lcom/sleepycat/je/rep/vlsn/VLSNBucket;

.field startingLsnInvocations:I

.field final vlsnIndex:Lcom/sleepycat/je/rep/vlsn/VLSNIndex;


# direct methods
.method constructor <init>(Lcom/sleepycat/je/rep/vlsn/VLSNIndex;)V
    .locals 1
    .param p1, "vlsnIndex"    # Lcom/sleepycat/je/rep/vlsn/VLSNIndex;

    .line 2243
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2244
    iput-object p1, p0, Lcom/sleepycat/je/rep/vlsn/VLSNIndex$VLSNScanner;->vlsnIndex:Lcom/sleepycat/je/rep/vlsn/VLSNIndex;

    .line 2245
    const/4 v0, 0x0

    iput v0, p0, Lcom/sleepycat/je/rep/vlsn/VLSNIndex$VLSNScanner;->startingLsnInvocations:I

    .line 2246
    return-void
.end method


# virtual methods
.method public abstract getPreciseLsn(Lcom/sleepycat/je/utilint/VLSN;)J
.end method

.method public abstract getStartingLsn(Lcom/sleepycat/je/utilint/VLSN;)J
.end method
