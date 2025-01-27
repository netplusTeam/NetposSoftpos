.class public Lcom/sleepycat/je/utilint/EventTrace$ExceptionEventTrace;
.super Lcom/sleepycat/je/utilint/EventTrace;
.source "EventTrace.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/utilint/EventTrace;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ExceptionEventTrace"
.end annotation


# instance fields
.field private event:Ljava/lang/Exception;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 105
    invoke-direct {p0}, Lcom/sleepycat/je/utilint/EventTrace;-><init>()V

    .line 106
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/je/utilint/EventTrace$ExceptionEventTrace;->event:Ljava/lang/Exception;

    .line 107
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/sleepycat/je/utilint/EventTrace$ExceptionEventTrace;->event:Ljava/lang/Exception;

    invoke-static {v0}, Lcom/sleepycat/je/utilint/LoggerUtils;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
