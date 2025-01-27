.class public Lorg/apache/sshd/common/util/io/NoCloseWriter;
.super Ljava/io/FilterWriter;
.source "NoCloseWriter.java"


# direct methods
.method public constructor <init>(Ljava/io/Writer;)V
    .locals 0
    .param p1, "out"    # Ljava/io/Writer;

    .line 31
    invoke-direct {p0, p1}, Ljava/io/FilterWriter;-><init>(Ljava/io/Writer;)V

    .line 32
    return-void
.end method

.method public static resolveWriter(Ljava/io/Writer;Z)Ljava/io/Writer;
    .locals 1
    .param p0, "r"    # Ljava/io/Writer;
    .param p1, "okToClose"    # Z

    .line 40
    if-eqz p0, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 43
    :cond_0
    new-instance v0, Lorg/apache/sshd/common/util/io/NoCloseWriter;

    invoke-direct {v0, p0}, Lorg/apache/sshd/common/util/io/NoCloseWriter;-><init>(Ljava/io/Writer;)V

    return-object v0

    .line 41
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

    .line 37
    return-void
.end method
