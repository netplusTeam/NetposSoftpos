.class public Lorg/jline/utils/NonBlocking;
.super Ljava/lang/Object;
.source "NonBlocking.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jline/utils/NonBlocking$NonBlockingInputStreamReader;,
        Lorg/jline/utils/NonBlocking$NonBlockingReaderInputStream;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static nonBlocking(Ljava/lang/String;Ljava/io/InputStream;)Lorg/jline/utils/NonBlockingInputStream;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "inputStream"    # Ljava/io/InputStream;

    .line 44
    instance-of v0, p1, Lorg/jline/utils/NonBlockingInputStream;

    if-eqz v0, :cond_0

    .line 45
    move-object v0, p1

    check-cast v0, Lorg/jline/utils/NonBlockingInputStream;

    return-object v0

    .line 47
    :cond_0
    new-instance v0, Lorg/jline/utils/NonBlockingInputStreamImpl;

    invoke-direct {v0, p0, p1}, Lorg/jline/utils/NonBlockingInputStreamImpl;-><init>(Ljava/lang/String;Ljava/io/InputStream;)V

    return-object v0
.end method

.method public static nonBlocking(Ljava/lang/String;Ljava/io/InputStream;Ljava/nio/charset/Charset;)Lorg/jline/utils/NonBlockingReader;
    .locals 2
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .param p2, "encoding"    # Ljava/nio/charset/Charset;

    .line 58
    new-instance v0, Lorg/jline/utils/NonBlocking$NonBlockingInputStreamReader;

    invoke-static {p0, p1}, Lorg/jline/utils/NonBlocking;->nonBlocking(Ljava/lang/String;Ljava/io/InputStream;)Lorg/jline/utils/NonBlockingInputStream;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Lorg/jline/utils/NonBlocking$NonBlockingInputStreamReader;-><init>(Lorg/jline/utils/NonBlockingInputStream;Ljava/nio/charset/Charset;)V

    return-object v0
.end method

.method public static nonBlocking(Ljava/lang/String;Ljava/io/Reader;)Lorg/jline/utils/NonBlockingReader;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "reader"    # Ljava/io/Reader;

    .line 51
    instance-of v0, p1, Lorg/jline/utils/NonBlockingReader;

    if-eqz v0, :cond_0

    .line 52
    move-object v0, p1

    check-cast v0, Lorg/jline/utils/NonBlockingReader;

    return-object v0

    .line 54
    :cond_0
    new-instance v0, Lorg/jline/utils/NonBlockingReaderImpl;

    invoke-direct {v0, p0, p1}, Lorg/jline/utils/NonBlockingReaderImpl;-><init>(Ljava/lang/String;Ljava/io/Reader;)V

    return-object v0
.end method

.method public static nonBlockingPumpInputStream()Lorg/jline/utils/NonBlockingPumpInputStream;
    .locals 1

    .line 32
    new-instance v0, Lorg/jline/utils/NonBlockingPumpInputStream;

    invoke-direct {v0}, Lorg/jline/utils/NonBlockingPumpInputStream;-><init>()V

    return-object v0
.end method

.method public static nonBlockingPumpInputStream(I)Lorg/jline/utils/NonBlockingPumpInputStream;
    .locals 1
    .param p0, "size"    # I

    .line 36
    new-instance v0, Lorg/jline/utils/NonBlockingPumpInputStream;

    invoke-direct {v0, p0}, Lorg/jline/utils/NonBlockingPumpInputStream;-><init>(I)V

    return-object v0
.end method

.method public static nonBlockingPumpReader()Lorg/jline/utils/NonBlockingPumpReader;
    .locals 1

    .line 24
    new-instance v0, Lorg/jline/utils/NonBlockingPumpReader;

    invoke-direct {v0}, Lorg/jline/utils/NonBlockingPumpReader;-><init>()V

    return-object v0
.end method

.method public static nonBlockingPumpReader(I)Lorg/jline/utils/NonBlockingPumpReader;
    .locals 1
    .param p0, "size"    # I

    .line 28
    new-instance v0, Lorg/jline/utils/NonBlockingPumpReader;

    invoke-direct {v0, p0}, Lorg/jline/utils/NonBlockingPumpReader;-><init>(I)V

    return-object v0
.end method

.method public static nonBlockingStream(Lorg/jline/utils/NonBlockingReader;Ljava/nio/charset/Charset;)Lorg/jline/utils/NonBlockingInputStream;
    .locals 2
    .param p0, "reader"    # Lorg/jline/utils/NonBlockingReader;
    .param p1, "encoding"    # Ljava/nio/charset/Charset;

    .line 40
    new-instance v0, Lorg/jline/utils/NonBlocking$NonBlockingReaderInputStream;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lorg/jline/utils/NonBlocking$NonBlockingReaderInputStream;-><init>(Lorg/jline/utils/NonBlockingReader;Ljava/nio/charset/Charset;Lorg/jline/utils/NonBlocking$1;)V

    return-object v0
.end method
