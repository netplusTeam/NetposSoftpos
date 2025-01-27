.class public Lcom/sleepycat/je/evictor/OffHeapAllocator$OffHeapOverflowException;
.super Ljava/lang/Exception;
.source "OffHeapAllocator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/evictor/OffHeapAllocator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OffHeapOverflowException"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 58
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    return-void
.end method
