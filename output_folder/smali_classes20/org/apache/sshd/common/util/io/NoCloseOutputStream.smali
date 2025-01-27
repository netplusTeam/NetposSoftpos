.class public Lorg/apache/sshd/common/util/io/NoCloseOutputStream;
.super Ljava/io/FilterOutputStream;
.source "NoCloseOutputStream.java"


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 0
    .param p1, "out"    # Ljava/io/OutputStream;

    .line 32
    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 33
    return-void
.end method

.method public static resolveOutputStream(Ljava/io/OutputStream;Z)Ljava/io/OutputStream;
    .locals 1
    .param p0, "output"    # Ljava/io/OutputStream;
    .param p1, "okToClose"    # Z

    .line 41
    if-eqz p0, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 44
    :cond_0
    new-instance v0, Lorg/apache/sshd/common/util/io/NoCloseOutputStream;

    invoke-direct {v0, p0}, Lorg/apache/sshd/common/util/io/NoCloseOutputStream;-><init>(Ljava/io/OutputStream;)V

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
