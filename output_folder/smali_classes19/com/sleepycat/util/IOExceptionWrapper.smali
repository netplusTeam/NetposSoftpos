.class public Lcom/sleepycat/util/IOExceptionWrapper;
.super Ljava/io/IOException;
.source "IOExceptionWrapper.java"

# interfaces
.implements Lcom/sleepycat/util/ExceptionWrapper;


# static fields
.field private static final serialVersionUID:J = 0x2ce83912L


# instance fields
.field private e:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .line 32
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 33
    iput-object p1, p0, Lcom/sleepycat/util/IOExceptionWrapper;->e:Ljava/lang/Throwable;

    .line 34
    return-void
.end method


# virtual methods
.method public getCause()Ljava/lang/Throwable;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/sleepycat/util/IOExceptionWrapper;->e:Ljava/lang/Throwable;

    return-object v0
.end method

.method public getDetail()Ljava/lang/Throwable;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/sleepycat/util/IOExceptionWrapper;->e:Ljava/lang/Throwable;

    return-object v0
.end method
