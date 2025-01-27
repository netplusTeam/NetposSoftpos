.class Lcom/sleepycat/je/cleaner/DataEraser$NoUnprotectedFilesException;
.super Ljava/lang/RuntimeException;
.source "DataEraser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/cleaner/DataEraser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NoUnprotectedFilesException"
.end annotation


# instance fields
.field final logLevel:Ljava/util/logging/Level;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/util/logging/Level;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "logLevel"    # Ljava/util/logging/Level;

    .line 1961
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 1962
    iput-object p2, p0, Lcom/sleepycat/je/cleaner/DataEraser$NoUnprotectedFilesException;->logLevel:Ljava/util/logging/Level;

    .line 1963
    return-void
.end method
