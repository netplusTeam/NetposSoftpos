.class public Lcom/sleepycat/util/keyrange/KeyRangeException;
.super Ljava/lang/IllegalArgumentException;
.source "KeyRangeException.java"


# static fields
.field private static final serialVersionUID:J = 0x3e7ffe01L


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;

    .line 30
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 31
    return-void
.end method
