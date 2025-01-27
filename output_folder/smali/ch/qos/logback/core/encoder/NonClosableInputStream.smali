.class public Lch/qos/logback/core/encoder/NonClosableInputStream;
.super Ljava/io/FilterInputStream;
.source "NonClosableInputStream.java"


# direct methods
.method constructor <init>(Ljava/io/InputStream;)V
    .locals 0
    .param p1, "is"    # Ljava/io/InputStream;

    .line 23
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 24
    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    .line 32
    return-void
.end method

.method public realClose()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 35
    invoke-super {p0}, Ljava/io/FilterInputStream;->close()V

    .line 36
    return-void
.end method
