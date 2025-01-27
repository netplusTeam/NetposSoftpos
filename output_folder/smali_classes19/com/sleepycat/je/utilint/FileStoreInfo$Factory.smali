.class interface abstract Lcom/sleepycat/je/utilint/FileStoreInfo$Factory;
.super Ljava/lang/Object;
.source "FileStoreInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/utilint/FileStoreInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "Factory"
.end annotation


# virtual methods
.method public abstract factoryCheckSupported()V
.end method

.method public abstract factoryGetInfo(Ljava/lang/String;)Lcom/sleepycat/je/utilint/FileStoreInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
