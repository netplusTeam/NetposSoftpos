.class interface abstract Lcom/sleepycat/je/util/verify/BtreeVerifier$FileSizeCache;
.super Ljava/lang/Object;
.source "BtreeVerifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/util/verify/BtreeVerifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60a
    name = "FileSizeCache"
.end annotation


# virtual methods
.method public abstract getFileSize(J)Lcom/sleepycat/je/utilint/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lcom/sleepycat/je/utilint/Pair<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end method
