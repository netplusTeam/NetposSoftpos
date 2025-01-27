.class public Lorg/jpos/util/DirPoll$DirPollException;
.super Lorg/jpos/iso/ISOException;
.source "DirPoll.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jpos/util/DirPoll;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DirPollException"
.end annotation


# instance fields
.field retry:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 484
    invoke-direct {p0}, Lorg/jpos/iso/ISOException;-><init>()V

    .line 485
    return-void
.end method

.method public constructor <init>(Ljava/lang/Exception;)V
    .locals 0
    .param p1, "nested"    # Ljava/lang/Exception;

    .line 490
    invoke-direct {p0, p1}, Lorg/jpos/iso/ISOException;-><init>(Ljava/lang/Throwable;)V

    .line 491
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "detail"    # Ljava/lang/String;

    .line 487
    invoke-direct {p0, p1}, Lorg/jpos/iso/ISOException;-><init>(Ljava/lang/String;)V

    .line 488
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 0
    .param p1, "detail"    # Ljava/lang/String;
    .param p2, "nested"    # Ljava/lang/Exception;

    .line 493
    invoke-direct {p0, p1, p2}, Lorg/jpos/iso/ISOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 494
    return-void
.end method


# virtual methods
.method public isRetry()Z
    .locals 1

    .line 496
    iget-boolean v0, p0, Lorg/jpos/util/DirPoll$DirPollException;->retry:Z

    return v0
.end method

.method public setRetry(Z)V
    .locals 0
    .param p1, "retry"    # Z

    .line 499
    iput-boolean p1, p0, Lorg/jpos/util/DirPoll$DirPollException;->retry:Z

    .line 500
    return-void
.end method
