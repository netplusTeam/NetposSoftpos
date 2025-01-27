.class interface abstract Lcom/sleepycat/je/dbi/DiskOrderedScanner$RecordProcessor;
.super Ljava/lang/Object;
.source "DiskOrderedScanner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/dbi/DiskOrderedScanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "RecordProcessor"
.end annotation


# virtual methods
.method public abstract canProcessWithoutBlocking(I)Z
.end method

.method public abstract checkShutdown()V
.end method

.method public abstract getCapacity()I
.end method

.method public abstract process(I[B[BIZ)V
.end method
