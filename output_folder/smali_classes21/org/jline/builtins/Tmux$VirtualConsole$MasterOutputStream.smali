.class Lorg/jline/builtins/Tmux$VirtualConsole$MasterOutputStream;
.super Ljava/io/OutputStream;
.source "Tmux.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jline/builtins/Tmux$VirtualConsole;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MasterOutputStream"
.end annotation


# instance fields
.field private final buffer:Ljava/io/ByteArrayOutputStream;

.field private final decoder:Ljava/nio/charset/CharsetDecoder;

.field final synthetic this$0:Lorg/jline/builtins/Tmux$VirtualConsole;


# direct methods
.method private constructor <init>(Lorg/jline/builtins/Tmux$VirtualConsole;)V
    .locals 1

    .line 1930
    iput-object p1, p0, Lorg/jline/builtins/Tmux$VirtualConsole$MasterOutputStream;->this$0:Lorg/jline/builtins/Tmux$VirtualConsole;

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 1931
    new-instance p1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object p1, p0, Lorg/jline/builtins/Tmux$VirtualConsole$MasterOutputStream;->buffer:Ljava/io/ByteArrayOutputStream;

    .line 1932
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object p1

    invoke-virtual {p1}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    move-result-object p1

    sget-object v0, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    .line 1933
    invoke-virtual {p1, v0}, Ljava/nio/charset/CharsetDecoder;->onMalformedInput(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;

    move-result-object p1

    sget-object v0, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    .line 1934
    invoke-virtual {p1, v0}, Ljava/nio/charset/CharsetDecoder;->onUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;

    move-result-object p1

    iput-object p1, p0, Lorg/jline/builtins/Tmux$VirtualConsole$MasterOutputStream;->decoder:Ljava/nio/charset/CharsetDecoder;

    .line 1932
    return-void
.end method

.method synthetic constructor <init>(Lorg/jline/builtins/Tmux$VirtualConsole;Lorg/jline/builtins/Tmux$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/jline/builtins/Tmux$VirtualConsole;
    .param p2, "x1"    # Lorg/jline/builtins/Tmux$1;

    .line 1930
    invoke-direct {p0, p1}, Lorg/jline/builtins/Tmux$VirtualConsole$MasterOutputStream;-><init>(Lorg/jline/builtins/Tmux$VirtualConsole;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1973
    invoke-virtual {p0}, Lorg/jline/builtins/Tmux$VirtualConsole$MasterOutputStream;->flush()V

    .line 1974
    return-void
.end method

.method public declared-synchronized flush()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 1948
    :try_start_0
    iget-object v0, p0, Lorg/jline/builtins/Tmux$VirtualConsole$MasterOutputStream;->buffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    .line 1949
    .local v0, "size":I
    if-lez v0, :cond_1

    .line 1952
    :goto_0
    invoke-static {v0}, Ljava/nio/CharBuffer;->allocate(I)Ljava/nio/CharBuffer;

    move-result-object v1

    .line 1953
    .local v1, "out":Ljava/nio/CharBuffer;
    iget-object v2, p0, Lorg/jline/builtins/Tmux$VirtualConsole$MasterOutputStream;->buffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 1954
    .local v2, "in":Ljava/nio/ByteBuffer;
    iget-object v3, p0, Lorg/jline/builtins/Tmux$VirtualConsole$MasterOutputStream;->decoder:Ljava/nio/charset/CharsetDecoder;

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v1, v4}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;Z)Ljava/nio/charset/CoderResult;

    move-result-object v3

    .line 1955
    .local v3, "result":Ljava/nio/charset/CoderResult;
    invoke-virtual {v3}, Ljava/nio/charset/CoderResult;->isOverflow()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1956
    mul-int/lit8 v0, v0, 0x2

    .line 1962
    .end local v2    # "in":Ljava/nio/ByteBuffer;
    .end local v3    # "result":Ljava/nio/charset/CoderResult;
    goto :goto_0

    .line 1958
    .restart local v2    # "in":Ljava/nio/ByteBuffer;
    .restart local v3    # "result":Ljava/nio/charset/CoderResult;
    :cond_0
    iget-object v4, p0, Lorg/jline/builtins/Tmux$VirtualConsole$MasterOutputStream;->buffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 1959
    iget-object v4, p0, Lorg/jline/builtins/Tmux$VirtualConsole$MasterOutputStream;->buffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v5

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v6

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v7

    invoke-virtual {v4, v5, v6, v7}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 1960
    nop

    .line 1963
    .end local v2    # "in":Ljava/nio/ByteBuffer;
    .end local v3    # "result":Ljava/nio/charset/CoderResult;
    invoke-virtual {v1}, Ljava/nio/CharBuffer;->position()I

    move-result v2

    if-lez v2, :cond_1

    .line 1964
    invoke-virtual {v1}, Ljava/nio/CharBuffer;->flip()Ljava/nio/Buffer;

    .line 1965
    iget-object v2, p0, Lorg/jline/builtins/Tmux$VirtualConsole$MasterOutputStream;->this$0:Lorg/jline/builtins/Tmux$VirtualConsole;

    invoke-static {v2}, Lorg/jline/builtins/Tmux$VirtualConsole;->access$1600(Lorg/jline/builtins/Tmux$VirtualConsole;)Lorg/jline/builtins/ScreenTerminal;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/jline/builtins/ScreenTerminal;->write(Ljava/lang/CharSequence;)Z

    .line 1966
    iget-object v2, p0, Lorg/jline/builtins/Tmux$VirtualConsole$MasterOutputStream;->this$0:Lorg/jline/builtins/Tmux$VirtualConsole;

    invoke-static {v2}, Lorg/jline/builtins/Tmux$VirtualConsole;->access$1700(Lorg/jline/builtins/Tmux$VirtualConsole;)Ljava/io/OutputStream;

    move-result-object v2

    iget-object v3, p0, Lorg/jline/builtins/Tmux$VirtualConsole$MasterOutputStream;->this$0:Lorg/jline/builtins/Tmux$VirtualConsole;

    invoke-static {v3}, Lorg/jline/builtins/Tmux$VirtualConsole;->access$1600(Lorg/jline/builtins/Tmux$VirtualConsole;)Lorg/jline/builtins/ScreenTerminal;

    move-result-object v3

    invoke-virtual {v3}, Lorg/jline/builtins/ScreenTerminal;->read()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1969
    .end local v1    # "out":Ljava/nio/CharBuffer;
    .end local p0    # "this":Lorg/jline/builtins/Tmux$VirtualConsole$MasterOutputStream;
    :cond_1
    monitor-exit p0

    return-void

    .line 1947
    .end local v0    # "size":I
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized write(I)V
    .locals 1
    .param p1, "b"    # I

    monitor-enter p0

    .line 1938
    :try_start_0
    iget-object v0, p0, Lorg/jline/builtins/Tmux$VirtualConsole$MasterOutputStream;->buffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1939
    monitor-exit p0

    return-void

    .line 1937
    .end local p0    # "this":Lorg/jline/builtins/Tmux$VirtualConsole$MasterOutputStream;
    .end local p1    # "b":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public write([BII)V
    .locals 1
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1943
    iget-object v0, p0, Lorg/jline/builtins/Tmux$VirtualConsole$MasterOutputStream;->buffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 1944
    return-void
.end method
