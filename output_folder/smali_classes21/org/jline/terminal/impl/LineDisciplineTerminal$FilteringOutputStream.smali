.class Lorg/jline/terminal/impl/LineDisciplineTerminal$FilteringOutputStream;
.super Ljava/io/OutputStream;
.source "LineDisciplineTerminal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jline/terminal/impl/LineDisciplineTerminal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FilteringOutputStream"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/jline/terminal/impl/LineDisciplineTerminal;


# direct methods
.method private constructor <init>(Lorg/jline/terminal/impl/LineDisciplineTerminal;)V
    .locals 0

    .line 276
    iput-object p1, p0, Lorg/jline/terminal/impl/LineDisciplineTerminal$FilteringOutputStream;->this$0:Lorg/jline/terminal/impl/LineDisciplineTerminal;

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/jline/terminal/impl/LineDisciplineTerminal;Lorg/jline/terminal/impl/LineDisciplineTerminal$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/jline/terminal/impl/LineDisciplineTerminal;
    .param p2, "x1"    # Lorg/jline/terminal/impl/LineDisciplineTerminal$1;

    .line 276
    invoke-direct {p0, p1}, Lorg/jline/terminal/impl/LineDisciplineTerminal$FilteringOutputStream;-><init>(Lorg/jline/terminal/impl/LineDisciplineTerminal;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 306
    iget-object v0, p0, Lorg/jline/terminal/impl/LineDisciplineTerminal$FilteringOutputStream;->this$0:Lorg/jline/terminal/impl/LineDisciplineTerminal;

    iget-object v0, v0, Lorg/jline/terminal/impl/LineDisciplineTerminal;->masterOutput:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 307
    return-void
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 301
    iget-object v0, p0, Lorg/jline/terminal/impl/LineDisciplineTerminal$FilteringOutputStream;->this$0:Lorg/jline/terminal/impl/LineDisciplineTerminal;

    iget-object v0, v0, Lorg/jline/terminal/impl/LineDisciplineTerminal;->masterOutput:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 302
    return-void
.end method

.method public write(I)V
    .locals 1
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 279
    iget-object v0, p0, Lorg/jline/terminal/impl/LineDisciplineTerminal$FilteringOutputStream;->this$0:Lorg/jline/terminal/impl/LineDisciplineTerminal;

    invoke-virtual {v0, p1}, Lorg/jline/terminal/impl/LineDisciplineTerminal;->processOutputByte(I)V

    .line 280
    invoke-virtual {p0}, Lorg/jline/terminal/impl/LineDisciplineTerminal$FilteringOutputStream;->flush()V

    .line 281
    return-void
.end method

.method public write([BII)V
    .locals 3
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 285
    if-eqz p1, :cond_3

    .line 287
    if-ltz p2, :cond_2

    array-length v0, p1

    if-gt p2, v0, :cond_2

    if-ltz p3, :cond_2

    add-int v0, p2, p3

    array-length v1, p1

    if-gt v0, v1, :cond_2

    add-int v0, p2, p3

    if-ltz v0, :cond_2

    .line 290
    if-nez p3, :cond_0

    .line 291
    return-void

    .line 293
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p3, :cond_1

    .line 294
    iget-object v1, p0, Lorg/jline/terminal/impl/LineDisciplineTerminal$FilteringOutputStream;->this$0:Lorg/jline/terminal/impl/LineDisciplineTerminal;

    add-int v2, p2, v0

    aget-byte v2, p1, v2

    invoke-virtual {v1, v2}, Lorg/jline/terminal/impl/LineDisciplineTerminal;->processOutputByte(I)V

    .line 293
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 296
    .end local v0    # "i":I
    :cond_1
    invoke-virtual {p0}, Lorg/jline/terminal/impl/LineDisciplineTerminal$FilteringOutputStream;->flush()V

    .line 297
    return-void

    .line 289
    :cond_2
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 286
    :cond_3
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method
