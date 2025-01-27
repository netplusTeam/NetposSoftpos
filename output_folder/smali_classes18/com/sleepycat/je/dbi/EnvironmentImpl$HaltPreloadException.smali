.class Lcom/sleepycat/je/dbi/EnvironmentImpl$HaltPreloadException;
.super Ljava/lang/RuntimeException;
.source "EnvironmentImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/dbi/EnvironmentImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HaltPreloadException"
.end annotation


# instance fields
.field private final status:Lcom/sleepycat/je/PreloadStatus;


# direct methods
.method constructor <init>(Lcom/sleepycat/je/PreloadStatus;)V
    .locals 1
    .param p1, "status"    # Lcom/sleepycat/je/PreloadStatus;

    .line 3596
    invoke-virtual {p1}, Lcom/sleepycat/je/PreloadStatus;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 3597
    iput-object p1, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl$HaltPreloadException;->status:Lcom/sleepycat/je/PreloadStatus;

    .line 3598
    return-void
.end method


# virtual methods
.method getStatus()Lcom/sleepycat/je/PreloadStatus;
    .locals 1

    .line 3601
    iget-object v0, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl$HaltPreloadException;->status:Lcom/sleepycat/je/PreloadStatus;

    return-object v0
.end method
