.class public abstract Lorg/jline/terminal/impl/AbstractPty;
.super Ljava/lang/Object;
.source "AbstractPty.java"

# interfaces
.implements Lorg/jline/terminal/spi/Pty;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jline/terminal/impl/AbstractPty$PtyInputStream;
    }
.end annotation


# instance fields
.field private current:Lorg/jline/terminal/Attributes;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lorg/jline/terminal/impl/AbstractPty;)Lorg/jline/terminal/Attributes;
    .locals 1
    .param p0, "x0"    # Lorg/jline/terminal/impl/AbstractPty;

    .line 22
    iget-object v0, p0, Lorg/jline/terminal/impl/AbstractPty;->current:Lorg/jline/terminal/Attributes;

    return-object v0
.end method


# virtual methods
.method protected checkInterrupted()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InterruptedIOException;
        }
    .end annotation

    .line 47
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 50
    return-void

    .line 48
    :cond_0
    new-instance v0, Ljava/io/InterruptedIOException;

    invoke-direct {v0}, Ljava/io/InterruptedIOException;-><init>()V

    throw v0
.end method

.method protected abstract doGetSlaveInput()Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected abstract doSetAttr(Lorg/jline/terminal/Attributes;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public getSlaveInput()Ljava/io/InputStream;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 34
    invoke-virtual {p0}, Lorg/jline/terminal/impl/AbstractPty;->doGetSlaveInput()Ljava/io/InputStream;

    move-result-object v0

    .line 35
    .local v0, "si":Ljava/io/InputStream;
    const-string v1, "org.jline.terminal.pty.nonBlockingReads"

    const-string v2, "true"

    invoke-static {v1, v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 36
    new-instance v1, Lorg/jline/terminal/impl/AbstractPty$PtyInputStream;

    invoke-direct {v1, p0, v0}, Lorg/jline/terminal/impl/AbstractPty$PtyInputStream;-><init>(Lorg/jline/terminal/impl/AbstractPty;Ljava/io/InputStream;)V

    return-object v1

    .line 38
    :cond_0
    return-object v0
.end method

.method public setAttr(Lorg/jline/terminal/Attributes;)V
    .locals 1
    .param p1, "attr"    # Lorg/jline/terminal/Attributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 28
    new-instance v0, Lorg/jline/terminal/Attributes;

    invoke-direct {v0, p1}, Lorg/jline/terminal/Attributes;-><init>(Lorg/jline/terminal/Attributes;)V

    iput-object v0, p0, Lorg/jline/terminal/impl/AbstractPty;->current:Lorg/jline/terminal/Attributes;

    .line 29
    invoke-virtual {p0, p1}, Lorg/jline/terminal/impl/AbstractPty;->doSetAttr(Lorg/jline/terminal/Attributes;)V

    .line 30
    return-void
.end method
