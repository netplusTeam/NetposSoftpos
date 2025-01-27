.class public Lorg/apache/sshd/common/util/io/NoCloseInputStream;
.super Ljava/io/FilterInputStream;
.source "NoCloseInputStream.java"


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 0
    .param p1, "in"    # Ljava/io/InputStream;

    .line 32
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 33
    return-void
.end method

.method public static resolveInputStream(Ljava/io/InputStream;Z)Ljava/io/InputStream;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "okToClose"    # Z

    .line 41
    if-eqz p0, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 44
    :cond_0
    new-instance v0, Lorg/apache/sshd/common/util/io/NoCloseInputStream;

    invoke-direct {v0, p0}, Lorg/apache/sshd/common/util/io/NoCloseInputStream;-><init>(Ljava/io/InputStream;)V

    return-object v0

    .line 42
    :cond_1
    :goto_0
    return-object p0
.end method


# virtual methods
.method public close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 38
    return-void
.end method
