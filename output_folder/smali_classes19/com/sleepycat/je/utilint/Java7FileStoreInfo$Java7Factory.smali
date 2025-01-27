.class Lcom/sleepycat/je/utilint/Java7FileStoreInfo$Java7Factory;
.super Ljava/lang/Object;
.source "Java7FileStoreInfo.java"

# interfaces
.implements Lcom/sleepycat/je/utilint/FileStoreInfo$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/utilint/Java7FileStoreInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Java7Factory"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public factoryCheckSupported()V
    .locals 0

    .line 34
    return-void
.end method

.method public factoryGetInfo(Ljava/lang/String;)Lcom/sleepycat/je/utilint/FileStoreInfo;
    .locals 1
    .param p1, "file"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 39
    new-instance v0, Lcom/sleepycat/je/utilint/Java7FileStoreInfo;

    invoke-direct {v0, p1}, Lcom/sleepycat/je/utilint/Java7FileStoreInfo;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
