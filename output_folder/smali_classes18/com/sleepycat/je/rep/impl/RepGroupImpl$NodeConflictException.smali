.class public Lcom/sleepycat/je/rep/impl/RepGroupImpl$NodeConflictException;
.super Lcom/sleepycat/je/DatabaseException;
.source "RepGroupImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/rep/impl/RepGroupImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NodeConflictException"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .line 1416
    invoke-direct {p0, p1}, Lcom/sleepycat/je/DatabaseException;-><init>(Ljava/lang/String;)V

    .line 1417
    return-void
.end method
