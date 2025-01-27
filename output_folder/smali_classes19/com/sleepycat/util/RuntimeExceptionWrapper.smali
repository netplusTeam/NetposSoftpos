.class public Lcom/sleepycat/util/RuntimeExceptionWrapper;
.super Ljava/lang/RuntimeException;
.source "RuntimeExceptionWrapper.java"

# interfaces
.implements Lcom/sleepycat/util/ExceptionWrapper;


# static fields
.field private static final serialVersionUID:J = 0x41fae3c6L


# direct methods
.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "e"    # Ljava/lang/Throwable;

    .line 43
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 44
    return-void
.end method

.method public static wrapIfNeeded(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;
    .locals 1
    .param p0, "e"    # Ljava/lang/Throwable;

    .line 33
    instance-of v0, p0, Ljava/lang/RuntimeException;

    if-eqz v0, :cond_0

    .line 34
    move-object v0, p0

    check-cast v0, Ljava/lang/RuntimeException;

    return-object v0

    .line 36
    :cond_0
    new-instance v0, Lcom/sleepycat/util/RuntimeExceptionWrapper;

    invoke-direct {v0, p0}, Lcom/sleepycat/util/RuntimeExceptionWrapper;-><init>(Ljava/lang/Throwable;)V

    return-object v0
.end method


# virtual methods
.method public getDetail()Ljava/lang/Throwable;
    .locals 1

    .line 51
    invoke-virtual {p0}, Lcom/sleepycat/util/RuntimeExceptionWrapper;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    return-object v0
.end method
