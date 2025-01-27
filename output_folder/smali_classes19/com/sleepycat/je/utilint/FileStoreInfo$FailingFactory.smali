.class Lcom/sleepycat/je/utilint/FileStoreInfo$FailingFactory;
.super Ljava/lang/Object;
.source "FileStoreInfo.java"

# interfaces
.implements Lcom/sleepycat/je/utilint/FileStoreInfo$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/utilint/FileStoreInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FailingFactory"
.end annotation


# instance fields
.field final exception:Ljava/lang/RuntimeException;


# direct methods
.method constructor <init>(Ljava/lang/RuntimeException;)V
    .locals 0
    .param p1, "exception"    # Ljava/lang/RuntimeException;

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p1, p0, Lcom/sleepycat/je/utilint/FileStoreInfo$FailingFactory;->exception:Ljava/lang/RuntimeException;

    .line 67
    return-void
.end method


# virtual methods
.method public factoryCheckSupported()V
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/sleepycat/je/utilint/FileStoreInfo$FailingFactory;->exception:Ljava/lang/RuntimeException;

    throw v0
.end method

.method public factoryGetInfo(Ljava/lang/String;)Lcom/sleepycat/je/utilint/FileStoreInfo;
    .locals 1
    .param p1, "file"    # Ljava/lang/String;

    .line 75
    iget-object v0, p0, Lcom/sleepycat/je/utilint/FileStoreInfo$FailingFactory;->exception:Ljava/lang/RuntimeException;

    throw v0
.end method
